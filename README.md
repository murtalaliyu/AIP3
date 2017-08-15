# AIP3
We are given training data in the form of 9-element vectors corresponding to 3x3 grayscale pixel patches, and the corresponding 'true' color of the center pixel. Using this training data, we are to develop an algorithm to color new grayscale images by taking gray pixel data and predicting the correct center color.

-To run-
In the matlab console:
1. Import your input.csv, color.csv and data.csv files into your workspace.
2. Type [mat,inputSize] = train(input,color). You should get back a matrix 'mat' and integer variable 'inputSize'.
3. Type newColor = test(data). You should get back a matrix 'newColor'.
4. Type colorType = repColors(newColor). This will give you back a variable 'colorType' that contains each color prediction per pixel in data.

-To export colorType to csv:
1. Type csvwrite('nameoffile.dat',colorType)
2. Type 'type nameoffile.dat'
3. Go to your Matlab working directory, nameoffile.dat should be there and can be opened as a text file or spreadsheet.
