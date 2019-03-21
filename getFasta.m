function parsedFasta=getFasta(method)
if method==1
    fasta=inputFasta();
elseif method==2
    filename= input('Enter file name: ', 's');
    fasta=fileFasta(filename);
elseif method==3
    URLIdentifier= input('Enter URL Indentifier: ','s');
    fasta=fetchFasta(URLIdentifier);
else
    disp('Incorrect method ');
    return;
end
parsedFasta = parseFasta(fasta);

end