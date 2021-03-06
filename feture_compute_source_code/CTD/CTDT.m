% CTD Descriptors - Transition
%This function calculates the Transition descriptor (Dim 21)
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
%Return : a length 21 vector
%Written by KeMeng
%Supervised by ZhangWen

function [ctdt]=CTDT(str)
a12=0;a23=0;a13=0;p=0;
len=length(str);
result=zeros(1,21);

group.hydrophobicity='RKEDQN';
group.normwaalsvolume='GASTPDC';
group.polarity='LIFWCMVY';
group.polarizability='GASDT';
group.charge= 'KR';
group.secondarystruct='EALMQKRH';
group.solventaccess='ALFCGIVW';
  
group(2).hydrophobicity = 'GASTPHY';
group(2).normwaalsvolume='NVEQIL';
group(2).polarity='PATGS';
group(2).polarizability='CPNVEQIL';
group(2).charge='ANCQGHILMFPSTWYV';
group(2).secondarystruct='VIYCWFT';
group(2).solventaccess='RKQEND';
  
group(3).hydrophobicity = 'CLVIMFW';
group(3).normwaalsvolume='MHKFRYW';
group(3).polarity='HQRKNED';
group(3).polarizability='KMHFRYW';
group(3).charge='DE';
group(3).secondarystruct='GNPSD';
group(3).solventaccess= 'MSPTHY';

for i=1:7
switch i 
    case 1 
        tt=str;
        for t=1:len
           if strfind(group(1).hydrophobicity,tt(t))~=0
                if p==2
                    a12=a12+1;
                end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).hydrophobicity,tt(t))~=0
                if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
                end
            if strfind(group(3).hydrophobicity,tt(t))~=0 
                if p==1
                    a13=a13+1;
                end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
              end
                
         end
        p=0;
        result(i)=a12/(len-1);a12=0;
        result(i+1)=a13/(len-1);a13=0;
        result(i+2)=a23/(len-1);a23=0;
     case 2  
         tt=str;
         for t=1:len
            if strfind(group(1).normwaalsvolume,tt(t))~=0
                if p==2
                    a12=a12+1;
                end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).normwaalsvolume,tt(t))~=0
                 if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
             end
              if strfind(group(3).normwaalsvolume,tt(t))~=0
                 if p==1
                    a13=a13+1;
                end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
              end
                
         end
           p=0;
       result(3*i-2)=a12/(len-1);a12=0;
        result(3*i-1)=a13/(len-1);a13=0;
        result(3*i)=a23/(len-1);a23=0;
     case 3  
         tt=str;
         for t=1:len
            if strfind(group(1).polarity,tt(t))~=0
                if p==2
                    a12=a12+1;
                end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).polarity,tt(t))~=0
                 if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
             end
             if strfind(group(3).polarity,tt(t))~=0
                 if p==1
                    a13=a13+1;
                end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
             end
                
           
         end
         p=0;
       result(3*i-2)=a12/(len-1);a12=0;
        result(3*i-1)=a13/(len-1);a13=0;
        result(3*i)=a23/(len-1);a23=0;
     case 4 
         tt=str;
         for t=1:len
            if strfind(group(1).polarizability,tt(t))~=0
                 if p==2
                    a12=a12+1;
                end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).polarizability,tt(t))~=0
                 if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
             end
            if strfind(group(3).polarizability,tt(t))~=0
                 if p==1
                    a13=a13+1;
                end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
             end
         end
         p=0;
       result(3*i-2)=a12/(len-1);a12=0;
        result(3*i-1)=a13/(len-1);a13=0;
        result(3*i)=a23/(len-1);a23=0;
     case 5  
         tt=str;
         for t=1:len
            if strfind(group(1).charge,tt(t))~=0
              if p==2
                    a12=a12+1;
               end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).charge,tt(t))~=0
                 if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
             end
            if strfind(group(3).charge,tt(t))~=0
                if p==1
                    a13=a13+1;
                end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
             end
         end
         p=0;
       result(3*i-2)=a12/(len-1);a12=0;
        result(3*i-1)=a13/(len-1);a13=0;
        result(3*i)=a23/(len-1);a23=0;
     case 6  
         tt=str;
         for t=1:len
           if strfind(group(1).secondarystruct,tt(t))~=0
               if p==2
                    a12=a12+1;
               end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).secondarystruct,tt(t))~=0
               if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
             end
            if strfind(group(3).secondarystruct,tt(t))~=0
               if p==1
                    a13=a13+1;
               end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
             end
         end
         p=0;
        result(3*i-2)=a12/(len-1);a12=0;
        result(3*i-1)=a13/(len-1);a13=0;
        result(3*i)=a23/(len-1);a23=0;
     case 7 
         tt=str;
         for t=1:len
           if strfind(group(1).solventaccess,tt(t))~=0
                 if p==2
                    a12=a12+1;
                 end
                if p==3
                    a13=a13+1;
                end
              p=1;  
            end
            if strfind(group(2).solventaccess,tt(t))~=0
                if p==1
                    a12=a12+1;
                end
                if p==3
                    a23=a23+1;
                end
                  p=2;  
             end
            if strfind(group(3).solventaccess,tt(t))~=0
                if p==1
                    a13=a13+1;
               end
                if p==2
                    a23=a23+1;
                end
                  p=3; 
             end
         end
         p=0;
        result(3*i-2)=a12/(len-1);a12=0;
        result(3*i-1)=a13/(len-1);a13=0;
        result(3*i)=a23/(len-1);a23=0;
end
end
ctdt=result;
end