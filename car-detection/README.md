CAR-DETECTION
=============

Car detection using the UIUC car database

INFO:

This repository consists of 5 cascade classifier files and a c++ file to use these cascade classifiers to detect cars.

The image database can be downloaded from here : http://cogcomp.cs.illinois.edu/Data/Car/

The explanation of code is done with comments.

The classifiers have been taken from https://github.com/abhi-kumar/CAR-DETECTION and the code is also based on this repository.


USAGE:

You are supposed to have OpenCV installed in your system.

Keep all the files in a single folder location.

Run 'cmake .' in the source folder.

Run 'make'.

Run the code : example : ./car_detect checkcas.xml cas1.xml cas2.xml cas3.xml cas4.xml

This will output a 'resultsnew.txt' file which contains the localization results of all test images.
