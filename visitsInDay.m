temp = 0;
for i = 1 : length(data(:,3))
    temp(i) = data{i,3}(1);
end
datesSort = sort(temp);

count = 0;
index = 1;
prevDate = datesSort(1);

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

% datastructure in visitsPerDay

figure1 = figure;
axes1 = axes('Parent',figure1,'XTickLabel',visitsPerDay(:,1));
box(axes1,'on');
hold(axes1,'all');
% Create plot

 bar(visitsPerDay(:,2))