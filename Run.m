function Str=Run(num)
Str=[];
n=num;
while n>0
    a=randi([0 100]);
    b=randi([0 100]);
    c=randi([0 100]);
    op='+-*/';
    s1=randi([1 4]);
    s2=randi([1 4]);
    d=eval(['a' op(s1) 'b' op(s2) 'c']);
    str=[a,b,c,s1,s2,d];
    if isnan(d)
        continue;
    end
    flag1=~isempty(strfind(Str,str));
    flag2=logical(d>=100||d<0);
    flag3=logical(mod(d,1)~=0);
    if flag1||flag2||flag3
        continue;
    end
    Str=[Str,str];
    n=n-1;
end
