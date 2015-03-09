// TEAM - DenseMatrix //


#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

using namespace cv;
using namespace std;



Mat src; Mat src_gray; Mat dst;
int thresh = 100;
int max_thresh = 255;
RNG rng(12345);

/// Function header
void thresh_callback(int, void* );

/**
 * @function main
 */
int main( int, char** argv )
{
  /// Load source image and convert it to gray
  src = imread( argv[1], 1 );
  
//  pyrMeanShiftFiltering( src, dst, 10, 35, 3);
//  imshow("mean-segment", dst);
  /// Convert image to gray and blur it
  cvtColor( src, src_gray, COLOR_BGR2GRAY );
  GaussianBlur( src_gray, src_gray, Size(5,5),0,0 );
   //imshow("src_gray_blur", src_gray);
//	equalizeHist(src_gray, src_gray);
//	imshow("src_gray_eq", src_gray);
  /// Create Window
  const char* source_window = "Source";
  namedWindow( source_window, WINDOW_AUTOSIZE );
  //imshow( source_window, src );
//add for user threshold i/p
 createTrackbar( " Threshold:", "Source", &thresh, max_thresh, thresh_callback );
  thresh_callback( 0, 0 );

  waitKey(0);
  return(0);
}


/**
 *
 @function thresh_callback
 */
void thresh_callback(int, void* )
{
  Mat threshold_output;
  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;
  vector<Mat> contourRegion;
  float minArea= 1500.0;  // threshold for area-wise cleanup
  /// Detect edges using Threshold for user thresh i/p
// threshold( src_gray, threshold_output, thresh, 255, THRESH_BINARY );
	//adaptiveThreshold(src_gray, threshold_output, 255, ADAPTIVE_THRESH_GAUSSIAN_C, CV_THRESH_BINARY, 151, 0);
 // threshold( src_gray, threshold_output, 128, 255, THRESH_BINARY );
  inRange(src_gray, 10,100, threshold_output);
  imshow("thresh", threshold_output);
  imwrite("middle.jpg", threshold_output);
  //closing operation
//  dilate(threshold_output, threshold_output, cv::Mat(), cv::Point(-1,-1),3);
//  erode(threshold_output, threshold_output, cv::Mat(), cv::Point(-1,-1),3);
//  imshow("thresh_close", threshold_output);
  
  /// Find contours
  findContours( threshold_output, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0, 0) );
  
  //variables for drawing and extraction
  vector<vector<Point> > contours_poly( contours.size() );
  vector<Rect> boundRect( contours.size() );
  vector<Point2f>center( contours.size() );	 // centers of the enclosing circles
  vector<Point2f>center_contours( contours.size() );	 // centers of the contours
  vector<float>radius( contours.size() );  //radii of the enclosing circles
  vector<Mat>images(contours.size()); // extracted images from bounding rectangles
  vector<Moments>mu(contours.size()); // moments of the contours
 
  Mat area = Mat::zeros(contours.size(), 2, CV_32F);
  Mat cropped;
  Mat area1 = Mat::zeros(contours.size(), 2, CV_32F);
  static std:: stringstream oss;
  int count_contours =0;  // contours with area greater than minArea 
  char destname[30]= "";
  const char  str1[7] = "result";
  const char str2[5] = ".jpg";
  
  /// Approximate contours to polygons + get bounding rects and circles
  for( size_t i = 0; i < contours.size(); i++ )
     { 
		approxPolyDP( Mat(contours[i]), contours_poly[i], 3, true );
        boundRect[i] = boundingRect( Mat(contours_poly[i]) );
	    // area of rectangles
	     area.at<float>(i,0)=(float)i;
		 area.at<float>(i,1)= (float)boundRect[i].width* boundRect[i].height;
		
         minEnclosingCircle( contours_poly[i], center[i], radius[i] );
		// area of circles
	     area1.at<float>(i,0)=(float)i;
		 area1.at<float>(i,1)= (float)(radius[i]*radius[i]);

		//moments of the contour
		mu[i]= moments(contours_poly[i], false);
		
		//center of the contour
		center_contours[i]= Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 );
     }


  /// Draw polygonal contour + bonding rects + circles
	  Mat drawing = Mat::zeros( threshold_output.size(), CV_8UC3 );
	  Mat overlap = Mat::zeros( threshold_output.size(), CV_8UC3 );
  for( size_t i = 0; i< contours.size(); i++ )
     {
       Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
       //drawContours( drawing, contours_poly, (int)i, color, 1, 8, vector<Vec4i>(), 0, Point() );
//  try if something else can be used for comparison  e.g contourArea/RectArea
       if(area.at<float>(i,1)> minArea)
		{	
			 //draw the rectangle
			  rectangle( drawing, boundRect[i].tl(), boundRect[i].br(), color, 2, 8, 0 );
			 //calculate moments for the contour
			 // draw the enclosing circle
             // circle( drawing, center[i], (int)radius[i], color, 2, 8, 0 );
			 
			 //mark the center of the contour
			 //circle(drawing,center_contours[i],3, Scalar(255,0,0), -1,8,0 );
			  
			  images[i]= src(boundRect[i]);
			  count_contours +=1;
			  //mark the center of the enclosing circle
			  //circle( drawing, center[i], 3, Scalar(0,255,0), -1, 8, 0 );

			//  strcpy(destname, str1); itoa((int)i, destname, 10);
			//	strcat(destname, str2);
			oss<< str1 << i<< str2;
	        cout << oss.str() << endl;
				 
			 // imshow(oss.str(), images[i]);
			  oss.clear();
			  oss.str(""); 
		}
	
			   
     }
/*	for(size_t i=0;i <contours.size();i++)
	{		
			Mat mask = Mat::zeros(src.size(), CV_8UC1);
			drawContours(mask, contours, (int)i, Scalar(255), CV_FILLED);		
			Mat imageROI;
			src.copyTo(imageROI, mask);
			contourRegion[i]= imageROI(boundRect[i]);
	}*/
		
//printing areas of rectangles
/*	for(size_t i=0;i<contours.size(); i++)
	{
			cout<< " " << area.at<float>(i,0) <<  " " << area.at<float>(i,1) << endl;
	}

//	qsort(area.data, area.rows, sizeof(area.row(0)), compareforsort);
	
	for(size_t i=0;i<contours.size(); i++)
	{
			cout<< " " << area.at<float>(i,0) <<  " " << area.at<float>(i,1) << endl;
	}*/
	printf("count %d\n", count_contours);
  /// Show in a window
  namedWindow( "Contours" );
  //imshow( "Contours", drawing );
	imwrite("contours_.jpg", drawing);
	
	add(src, drawing, overlap);
	imshow("Contours", overlap);
	imwrite("overlap.jpg", overlap);
}
