
function tm = loadData(tu)


time_unix =  tu;
time_reference = datenum('1970', 'yyyy');
time_matlab = time_reference + time_unix / 8.64e7;
time_str = datestr(time_matlab, 'yyyymmdd HH:MM:SS.FFF');
tm = datevec(time_str);