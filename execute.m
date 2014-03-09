% load data using import Data..... in variables urls, datesUnix, ids 
% in datafile browser.csv.... replaced ',' in urls with (comma)

%dates=cell(length(datesUnix),1);
%size(dates)
clear;
load('BrowserData.mat');
pattern = '[//]*//[^/]*';
for i = 1 : length(datesUnix)
    %dates{i} = num2cell(loadData(datesUnix(i)));
    dates{i,:} = loadData(datesUnix(i));
    dateShort{i} =  dates{i}(1); 
    temp = regexp(urls(i), pattern, 'match');
    urlsTrunc(i,:) = temp{1}(1);
end
ides = num2cell(1 : length(datesUnix))';
data = [ides urlsTrunc dates];

urlsUniq = unique(urlsTrunc);

temp = 0;
for i = 1 : length(data(:,3))
    temp(i) = data{i,3}(1);   
    data{i,4}=temp(i);
end
datesSort = sort(temp);
dataSortDates = sortrows(data,4);
dataSortUrls = sortrows(data,2);
