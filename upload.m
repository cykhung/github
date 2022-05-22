function upload(name)


%% Create zipfile.
zipfilename = sprintf('c:\\github\\%s.zip', name);
files       = 'c:\class';
fprintf('Create zip file "%s".\n', zipfilename);
zip(zipfilename, files);


%% Commit zipfile to github.
fprintf('Commit zip file to github.\n');
svn('add --force', zipfilename);
svn('ci', zipfilename, '-m "Upload file."');


%%
url = sprintf('https://github.com/cykhung/github.git/blob/main/%s.zip', name);
fprintf('In your local PC, go to %s to download your zip file.\n\n', url)


end

