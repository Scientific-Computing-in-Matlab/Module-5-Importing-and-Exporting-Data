% Import Text Files
% In this assignment, you write a function (readRT) that can handle file formats of increasing complexity.
% The data files in the ../data folder represent the result of an experiment in which subjects performed 
% multiple trials of a reaction time task. Your goal is to extract the reaction times from the 5 output files that use increasingly complex formats. 

% The first file (rt.1.txt) contains the reaction times in 10 rows (=subjects) of 12 trials, separated by spaces.
% The second file (rt.2.txt ) has one line (the first) specifying the number of subjects and trials per subject, followed by a similar (space-separated) table of reaction times (one line per subject).
% In the third file (rt.3.txt ) subjects did not all complete the full set of trials. The first line specifies the number of subjects and the maximum number of trials per subject. Each subsequent line can contain at most that many trials but they can contain fewer numbers. 
% In the fourth file (rt.4.txt ) the additional complication is that it starts with an unknown number of comment lines. Comment lines start with the  '%' character. In all other respects format, 4 is equal to 3.
% In the fifth file (rt.5.txt) neither the number of subjects nor the number of trials is specified anywhere. The only information you have is that each line contains either a comment (lines starting with '%')  or it contains the reaction times for one subject. Note that comment lines can happen anywhere in the file. You are allowed to assume that there are at most 25 subjects, and at most 100 trials for a given subject.  
% In all cases, the output argument of the function should be a matrix (not a cell array!) in which each column contains the reaction time data for a single subject. The number of columns should equal the number of subjects, and the number of rows the maximum number of trials that a subject ran. Missing values/trials should be NaN in this matrix.

% Hints:
% You can open these data files in a text editor, but you are not allowed to use information that you could only get from opening the file in a text editor. 
% In other words, your script has to work for any file that matches the format, not just the specific example file provided here. 
% Of course, you can use what you see in the text file to check whether your function returns the correct values. 
% Useful functions: fopen, fscanf, textscan, fgetl, while, nan, for
% If you get stuck and your function keeps returning incorrect values, make sure to use the debugger 

function rt = readRT(filename,variant)
% Read reaction time data from a text file 
% INPUT
% filename = name of the file to open.
% variant  =  1,2,3,4,5 corresponding to the (increasingly difficult)
%               formats.
% OUTPUT
% rt = A matrix of reaction times. Each column corresponds to a subject.
%
% EXAMPLE
% rt = readrt('rt.1.txt',1) ;% Open the file rt.1.txt assuming it has the
%                           % simplest format (i.e. '1' in the assignment).


%% First check that the file exists.

%% Open the file


%% Depending on the variant, proceed differently.
switch (variant)
    case 1
        %Easy - we know the number of subjects each subject performed the
        %same number of trials. .
        % YOUR CODE FOR VARIANT 1 GOES HERE
    case 2
        % Slightly harder: first line has the number of subjects and trials
        % YOUR CODE FOR VARIANT 2 GOES HERE
    case 3
        % Deal with missing trials.
        % YOUR CODE FOR VARIANT 3 GOES HERE
    case 4
        % Deal with comment lines (and missing trials).
        % YOUR CODE FOR VARIANT 4 GOES HERE
    case 5
        % Deal with comment lines and a variable number of lines in the
        % file.
        MAXSUBJECTS  =25; % OK to assume this for now.
        MAXTRIALS  = 100; % OK to assume this for now.                
        % YOUR CODE FOR VARIANT 5 GOES HERE
end

%% Don't forget to close the file.

end