This is a modified version of this HOG training code 
(https://github.com/DaHoC/trainHOG). This code has been used to work on the 
[UIUC Car dataset](https://cogcomp.cs.illinois.edu/Data/Car/) as part of the 
Aspiring Researchers Challenge.
- Team DenseMatrix


# openCV HOG Trainer

Linux program on how to train your custom HOG detecting vector for use with 
openCV hog.setSVMDetector(_descriptor)

## Information

For the paper regarding Histograms of Oriented Gradients (HOG), see 
http://lear.inrialpes.fr/pubs/2005/DT05/.
You can populate the positive samples dir with files from the INRIA person 
detection dataset, see http://pascal.inrialpes.fr/data/human/.
This program uses SVMlight as machine learning algorithm (see 
http://svmlight.joachims.org/), but is not restricted to it.
Tested in Ubuntu Linux 64bit 12.04 "Precise Pangolin" with openCV 2.3.1, 
SVMlight 6.02, g++ 4.6.3 and standard HOG settings, training images of size 
64x128px.

What this program basically does:
* Read positive and negative training sample image files from specified directories
* Calculate their HOG features and keep track of their classes (pos, neg)
* Save the feature map (vector of vectors/matrix) to file system
* Read in and pass the features and their classes to a machine learning algorithm, e.g. SVMlight
* Train the machine learning algorithm using the specified parameters
* Use the calculated support vectors and SVM model to calculate a single detecting descriptor vector
* Dry-run the newly trained custom HOG descriptor against training set and against the test images to generate bounding box information

## Preparation
* `svmlight` directory contains the svm source files.
* `pos` directory contains positive images to be trained. (Image dimensions need to be multiple of 8)
* `neg` directory contains negative images to be trained. (Image dimensions need to be multiple of 8)
* `TestImages` directory contains the images to be tested.
* `result` directory would contain the resultant images with bounding boxes around the cars.

## Usage

Build by issuing:
```
g++ `pkg-config --cflags opencv` -c -g -MMD -MP -MF main.o.d -o main.o main.cpp
gcc -c -g `pkg-config --cflags opencv` -MMD -MP -MF svmlight/svm_learn.o.d -o svmlight/svm_learn.o svmlight/svm_learn.c
gcc -c -g `pkg-config --cflags opencv` -MMD -MP -MF svmlight/svm_hideo.o.d -o svmlight/svm_hideo.o svmlight/svm_hideo.c
gcc -c -g `pkg-config --cflags opencv` -MMD -MP -MF svmlight/svm_common.o.d -o svmlight/svm_common.o svmlight/svm_common.c
g++ `pkg-config --cflags opencv` -o opencvhogtrainer main.o svmlight/svm_learn.o svmlight/svm_hideo.o svmlight/svm_common.o `pkg-config --libs opencv`
```

Then run using `./opencvhogtrainer`.

## Warning words
* At least one of the functions (opendir) doing file system operations is 
unix/linux-only, for using the program in other operating systems a alternative 
API functions have to be used.
* Be aware that the program may consume a considerable amount of main memory, 
hard disk memory and time, dependent on the amount of training samples.
* Also be aware that (esp. for 32bit systems), there are limitations for the 
maximum file size which may take effect when writing the features file.

## Issues
See https://github.com/DaHoC/trainHOG/issues

## Contact
Anuj Pahuja (anujpahuja13@gmail.com) or the original owner of this work - Jan Hendriks (dahoc3150 [at] gmail.com)

## Terms of use

This program is to be used as an example and is provided on an "as-is" basis 
without any warranties of any kind, either express or implied.
Use at your own risk.
For used third-party software, refer to their respective terms of use and 
licensing
