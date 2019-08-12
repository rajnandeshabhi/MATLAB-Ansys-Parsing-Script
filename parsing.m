%% Parsing to convert *.inp file to MATLAB Format which can generate *.inp format 
fid = fopen('Cap3d.txt');  					% open data file
fid2=fopen('covertedCap3D.txt','w');        %open converted data file
string2 = "fprintf(fid2,'\\r\\n";           % create custom made strings
string= "\r\n ";                             % create custom made strings
string3=" \\r\\n');";                        % create custom made strings
NoLines = 0;             					% determine number of lines 
while ~feof(fid)  							% checking until end of lines
    NoLines = NoLines + 1;
    tline=fgetl(fid);                       % checking for end of the line and saving it in newtline
    newtline=strcat(string,string2,tline,string3);% cancatinating everything to achieve the required format
    fprintf(fid2,newtline);                         % write the new converted string to the converted file
end
fprintf(1,'  Number Of Lines             : %10.0f\n',NoLines)
frewind(fid);                                       % coming back to start of the line! not required, but it is required if you want to improve the script
fclose(fid);                                        % close the file
fclose(fid2);