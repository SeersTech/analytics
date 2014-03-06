% load data using import Data..... in variables urls, datesUnix, ids 
% in datafile browser.csv.... replaced ',' in urls with (comma)

%dates=cell(length(datesUnix),1);
%size(dates)

pattern = '[//]*//[^/]*';
for i = 1 : length(datesUnix)
    %dates{i} = num2cell(loadData(datesUnix(i)));
    dates{i,:} = loadData(datesUnix(i));
 
    temp = regexp(urls(i), pattern, 'match');
    urlsTrunc(i,:) = temp{1}(1);
end
ides = num2cell(1 : length(datesUnix))';
data = [ides urlsTrunc dates];