% load data using import Data..... in variables urls, datesUnix, ids 
% in datafile browser.csv.... replaced ',' in urls with (comma)

for i = 1 : length(datesUnix)
    dates(i,:) = loadData(datesUnix(i));
end

pattern = '[//]*//[^/]*';
for i = 1 : length(urls)
    temp = regexp(urls(i), pattern, 'match');
   urlsTrunc(i,:) = temp{1}(1);
end