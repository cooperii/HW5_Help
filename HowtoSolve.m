%First we need to figure out what column our year is. I'm using 1999 as my
%example

% A is the name of my imported table

%strncmp is a great tool.
%inputs are strncmp(vector or cell you want to search,
%'the_phrase_you_are_searching_for', the length of the phrase)
year1999 = find(strncmp(fieldnames(A), 'x1999',5));
%here I used field names to look at the column names of the table

%Now str2double for the entire vector of numbers we want to use.
m1999= str2double(A{1:194,year1999});
