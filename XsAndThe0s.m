%findtheyears
% this is a touch long
% We know we have years in the form 'x####'
% A is my table that I imported from the csv

fields = fieldnames(A); 
% gives me the names of the columns

yearfields = find(strncmp(fields, 'x', 1));
% Finds all column names with an 'x' in position 1 of the string

years = zeros(size(yearfields));
%empty vector

for i = 1:numel(years),
    varname = fields{yearfields(i)};
    years(i) = str2double(varname(2:5));
    %fills the vector wth the 2nd thru 5th values of the string
end;
