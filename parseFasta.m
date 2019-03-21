function fastaSet = parseFasta(fastaContent)
fastaSet = struct('identifier',{},'sequence',{});
n=0;
remain = char(fastaContent);
while length(remain)>0
    [token, remain] = strtok(remain, char(10));
    if length(token)>0 && token(1) == '>'
        n = n+1;
        fastaSet(n).identifier = token(2:end);
        fastaSet(n).sequence = '';
    elseif n>0
        fastaSet(n).sequence = strcat(fastaSet(n).sequence, token);
    end
end

end

