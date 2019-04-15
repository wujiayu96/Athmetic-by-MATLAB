function Save(option,Str)
x='+-¡Á¡Â';
if option==1
    fp=fopen('NoAnswer.txt','w+');
    for n=1:6:length(Str)
    fprintf(fp,'%3d%3c%3d%3c%3d = \n',Str(n),x(Str(n+3)),Str(n+1),x(Str(n+4)),Str(n+2));
    end
    fclose(fp);
elseif option==2
    fp=fopen('Answer.txt','w+');
    for n=1:6:length(Str)
    fprintf(fp,'%3d%3c%3d%3c%3d = %3d\n',Str(n),x(Str(n+3)),Str(n+1),x(Str(n+4)),Str(n+2),Str(n+5));
    end
    fclose(fp);
end