
count = 0;
index = 1;
prevUrl = dataSortUrls{1,2};

visitsPerUrl = {};
% finding visits per URLs
for i = 1 : length(dataSortUrls)
    url = dataSortUrls{i,2};
    if(strcmp(prevUrl,url) == 0)
        visitsPerUrl(index,:) = {prevUrl count};
        prevUrl = url;
        index = index + 1;
        count = 0;
    end
    count = count + 1;
end
% Conver date to string format

visitsPerUrl = sortrows(visitsPerUrl,-2);
% Bar Plot
bar(cell2mat(visitsPerUrl(1:90,2)))

set( gca, 'XTick',1:90,'XTickLabel',visitsPerUrl(:,1));
rotateXLabels(gca, 90)