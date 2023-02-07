# Module-5 Importing and Exporting Data

In this module you learn to read data files and write output files in various formats.

## Objectives

At the end of this module you will be able to:

 - Explain the difference between text and binary files
 - Use import routines for files with common formats
 - Create a function that reads in data from a text file
 - Create a function that reads in data from a binary file
 - Choose an appropriate output format for your own analyses
 - Generate output files in various formats

## Materials
 1. The [file I/O module on Coursera](https://www.coursera.org/learn/matlab/home/week/9)
 1. [Import/Export Handout](./docs/ImportExport.pdf)
 1. [A video](https://youtu.be/qnk0KqF4iWY) showing how to *manually* import text data into Matlab. This works well for an occasional file import, but for routine usage you should write your own import function (see assignments).
 1. Now that you have started writing more complex functions and scripts, you will have more reasons to use the Matlab Debugger. [This tutorial](https://www.mathworks.com/videos/debugging-in-matlab-97189.html) gives a nice introduction, and there is another one [here](https://www.youtube.com/watch?embed=no&v=PdNY9n8lV1Y) that may also help you understand work spaces, variable scope, and loops better.

## Assignments

1. Write a function that imports text file formats of increasing complexity. The `rt.*.txt` data files in the `./data` folder represent the result of an experiment in which subjects performed multiple trials of a reaction time task. Your goal is to extract the reaction times from the 5 output files that use increasingly complex formats.  Use `./code/readRT.m` as your starting point. 
1. Write a function that reads data from a pair of header (.hdr) and image (.img) files. The header contains text 
describing the content of the image file, while the image file contains binary data (In this case the image of one or more slices of 
brain obtained using MRI). Use `./code/readImage.m` as your starting point; it also contains additional descriptions and hints.

