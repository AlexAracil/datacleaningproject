## Data Cleaning Project CodeBook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc-xyz and tgyro-xyz. The prefix 't' denotes time. The acceleration signal was then separated into body and gravity acceleration signals (tbodyacc-xyz and tgravityacc-xyz).

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerk-xyz and tbodygyrojerk-xyz). Also the magnitude of these three-dimensional signals were calculated (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc-xyz, fbodybccjerk-xyz, fbodygyro-xyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. The 'f' indicates frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

The variables that were estimated from these signals are
* mean: Mean value
* std: Standard deviation

Here is the list of features in the data frame:

1  subject: integer. Experiment subjects. Values: 1:30
2  activity: factor. Activities performed by the experiment subjects. Levels: 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING,5 STANDING, 6 LAYING
3  tbodyaccmeanx: real. Time domain, accelerometer body signal, X axis, Mean value
4  tbodyaccmeany: real. Time domain, accelerometer body signal, Y axis, Mean value
5  tbodyaccmeanz: real. Time domain, accelerometer body signal, Z axis, Mean value
6  tbodyaccstdx: real. Time domain, accelerometer body signal, X axis, Standard deviation
7  tbodyaccstdy: real. Time domain, accelerometer body signal, Y axis, Standard deviation
8  tbodyaccstdz: real. Time domain, accelerometer body signal, Z axis, Standard deviation
9  tgravityaccmeanx: real. Time domain, accelerometer gravity signal, X axis, Mean value
10 tgravityaccmeany: real. Time domain, accelerometer gravity signal, Y axis, Mean value
11 tgravityaccmeanz: real. Time domain, accelerometer gravity signal, Z axis, Mean value
12 tgravityaccstdx: real. Time domain, accelerometer gravity signal, X axis, Standard deviation
13 tgravityaccstdy: real. Time domain, accelerometer gravity signal, Y axis, Standard deviation
14 tgravityaccstdz: real. Time domain, accelerometer gravity signal, Z axis, Standard deviation
15 tbodyaccjerkmeanx: real. Time domain, accelerometer body jerk signal, X axis, Mean value
16 tbodyaccjerkmeany: real. Time domain, accelerometer body jerk signal, Y axis, Mean value
17 tbodyaccjerkmeanz: real. Time domain, accelerometer body jerk signal, Z axis, Mean value
18 tbodyaccjerkstdx: real. Time domain, accelerometer body jerk signal, X axis, Standard deviation
19 tbodyaccjerkstdy: real. Time domain, accelerometer body jerk signal, Y axis, Standard deviation
20 tbodyaccjerkstdz: real. Time domain, accelerometer body jerk signal, Z axis, Standard deviation
21 tbodygyromeanx: real. Time domain, gyroscope body signal, X axis, Mean value
22 tbodygyromeany: real. Time domain, gyroscope body signal, Y axis, Mean value
23 tbodygyromeanz: real. Time domain, gyroscope body signal, Z axis, Mean value
24 tbodygyrostdx: real. Time domain, gyroscope body signal, X axis, Standard deviation
25 tbodygyrostdy: real. Time domain, gyroscope body signal, Y axis, Standard deviation
26 tbodygyrostdz: real. Time domain, gyroscope body signal, Z axis, Standard deviation
27 tbodygyrojerkmeanx: real. Time domain, gyroscope body jerk signal, X axis, Mean value
28 tbodygyrojerkmeany: real. Time domain, gyroscope body jerk signal, Y axis, Mean value
29 tbodygyrojerkmeanz: real. Time domain, gyroscope body jerk signal, Z axis, Mean value
30 tbodygyrojerkstdx: real. Time domain, gyroscope body jerk signal, X axis, Standard deviation
31 tbodygyrojerkstdy: real. Time domain, gyroscope body jerk signal, Y axis, Standard deviation
32 tbodygyrojerkstdz: real. Time domain, gyroscope body jerk signal, Z axis, Standard deviation
33 tbodyaccmagmean: real. Time domain, accelerometer body signal magnitude, Mean value
34 tbodyaccmagstd: real. Time domain, accelerometer body signal magnitude, Standard deviation
35 tgravityaccmagmean: real. Time domain, accelerometer gravity signal magnitude, Mean value
36 tgravityaccmagstd: real. Time domain, accelerometer gravity signal magnitude, Standard deviation
37 tbodyaccjerkmagmean: real. Time domain, accelerometer body jerk signal magnitude, Mean value
38 tbodyaccjerkmagstd: real. Time domain, accelerometer body jerk signal magnitude, Standard deviation
39 tbodygyromagmean: real. Time domain, gyroscope body signal magnitude, Mean value
40 tbodygyromagstd: real. Time domain, gyroscope body signal magnitude, Standard deviation
41 tbodygyrojerkmagmean: real. Time domain, gyroscope body jerk signal magnitude, Mean value
42 tbodygyrojerkmagstd: real. Time domain, gyroscope body jerk signal magnitude, Standard deviation
43 fbodyaccmeanx: real. Frequency domain, accelerometer body signal, X axis, Mean value
44 fbodyaccmeany: real. Frequency domain, accelerometer body signal, Y axis, Mean value
45 fbodyaccmeanz: real. Frequency domain, accelerometer body signal, Z axis, Mean value
46 fbodyaccstdx: real. Frequency domain, accelerometer body signal, X axis, Standard deviation
47 fbodyaccstdy: real. Frequency domain, accelerometer body signal, Y axis, Standard deviation
48 fbodyaccstdz: real. Frequency domain, accelerometer body signal, Z axis, Standard deviation
49 fbodyaccjerkmeanx: real. Frequency domain, accelerometer body jerk signal, X axis, Mean value
50 fbodyaccjerkmeany: real. Frequency domain, accelerometer body jerk signal, Y axis, Mean value
51 fbodyaccjerkmeanz: real. Frequency domain, accelerometer body jerk signal, Z axis, Mean value
52 fbodyaccjerkstdx: real. Frequency domain, accelerometer body jerk signal, X axis, Standard deviation
53 fbodyaccjerkstdy: real. Frequency domain, accelerometer body jerk signal, Y axis, Standard deviation
54 fbodyaccjerkstdz: real. Frequency domain, accelerometer body jerk signal, Z axis, Standard deviation
55 fbodygyromeanx: real. Frequency domain, gyroscope body signal, X axis, Mean value
56 fbodygyromeany: real. Frequency domain, gyroscope body signal, Y axis, Mean value
57 fbodygyromeanz: real. Frequency domain, gyroscope body signal, Z axis, Mean value
58 fbodygyrostdx: real. Frequency domain, gyroscope body signal, X axis, Standard deviation
59 fbodygyrostdy: real. Frequency domain, gyroscope body signal, Y axis, Standard deviation
60 fbodygyrostdz: real. Frequency domain, gyroscope body signal, Z axis, Standard deviation
61 fbodyaccmagmean: real. Frequency domain, accelerometer body signal magnitude, Mean value
62 fbodyaccmagstd: real. Frequency domain, accelerometer body signal magnitude, Standard deviation
63 fbodybodyaccjerkmagmean: real.
64 fbodybodyaccjerkmagstd: real.
65 fbodybodygyromagmean: real.
66 fbodybodygyromagstd: real.
67 fbodybodygyrojerkmagmean: real.
68 fbodybodygyrojerkmagstd: real.

