%% Reading Binary Data
% It is fairly common for data files to consist of two parts. The first part is a header, 
% with information on what can be found in the file. The second part is the real data. 
% The header and data can be inside the same file (with the header just the first part) 
% or header and data can be stored in separate files.
%
% In this assignment the goal is to write Matlab code that reads in data from a 
% pair of header (.hdr) and image (.img) files. The header contains text 
% describing the content of the image file. 
% The image file contains binary data (In this case the image of one or more slices of 
% brain obtained using MRI). 
%
% The ../data/merry.hdr file contains text that describes the number of rows, columns, 
% and slices in the corresponding ../data/merry.img file as well as some text 
% data (comments) in a tag:value format, as follows:
% nrRows: 10
% nrColumns:20
% nrSlices: 2
% Comments: A nice picture
% In other words, each of the entries is on its own line and has the format name:value. 
% You can open the .hdr file in the ../data folder in a text editor to see what it looks like. 
%
% The .img file contains binary image data, there is one number (a 16 bit unsigned integer number: 'uint16' format) 
% that represents the brightness of a single pixel. For instance, if the header specifies that 
% there are 10 columns, 20 rows, and 2 slices, the file will contain 10*20*2 uint16 numbers. 
% You have to tell the read functions about this format!
%
% This specific format is made up, but a similar format is common in functional imaging (See Analyze, Nifti). 


function readImage(filename)
% readImage takes a file name as input. The function 
% 
% 1. Tests whether the .hdr and .img file exist and produce a meaningful error message otherwise.
% 2. Opens the header file, extracts the necessary information about the rows, columns, 
% and slices in the image file, and then uses that information to extract the brain image from the corresponding image file.
% 3. If the function is called with an output argument, the function should return 
% the data read from the file in a struct that contains both the meta data (columns, rows, comments) as well as the image data.
% 4. If the function is called without an output argument, the function should generate a figure 
% in which each slice is shown in a separate subplot.
%
% Hints: 
% Useful functions: varargout, nargout,exist, fgets, fread, error, str2num, axis square, colormap
% Make sure to follow the Style Guide, use proper documentation and group
% the separate sections of code using cells.
end