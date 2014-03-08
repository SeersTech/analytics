temp = 0;
for i = 1 : length(data(:,3))
    temp(i) = data{i,3}(1);   
end
datesSort = sort(temp);

count = 0;
index = 1;
prevDate = datesSort(1);

% finding visits per day
for i = 1 : length(datesSort)
    date = datesSort(i);
    if(prevDate ~= date)
        visitsPerDay(index,:) = [prevDate count];
        prevDate = date;
        index = index + 1;
        count = 0;
    end
    count = count + 1;
end
% Conver date to string format
for i = 1:length(visitsPerDay(:,1))
 datesInStr{i} = datestr(datenum(sprintf('%f',visitsPerDay(i,1)),'yyyymmdd'),'ddmmmyy');  
end

% Bar Plot
bar(visitsPerDay(:,2))
set( gca, 'XTick',1:74,'XTickLabel',datesInStr);
rotateXLabels(gca, 90)