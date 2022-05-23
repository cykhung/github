function makeclass


%% Create c:\class folder structure.
cd c:\
if exist('c:\class', 'dir') ~= 0
    rmdir c:\class s
end
unzip C:\Users\student\Desktop\zipfiles\slbe_g.zip c:\class\coursefiles
copyfile c:\class\coursefiles c:\class\original
mkdir c:\class\work
cd c:\class\work
addpath(genpath('c:\class\coursefiles\slbe_g'))


%% Add commands into MATLAB command history.
commands = {                                                ...
    'cd c:\class\work',                                     ...
    'addpath(genpath(''c:\class\coursefiles\slbe_g''))',    ...
    };
for n = 1:numel(commands)
    com.mathworks.mlservices.MLCommandHistoryServices.add(commands{n});
end


end
