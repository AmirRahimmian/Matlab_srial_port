n=20000;
voltage=zeros(1,n);
current=zeros(1,n);
s=serial('COM3');        %com_port selection
s.BaudRate=115200;       %Baudrate_Value
tic
fopen(s);
data=fscanf(s,'%c');
k=1;
j=1;
for i=1:2*n
    if mod(i,2)==0
        voltage(k)=str2num(fscanf(s,'%c'));
        disp(voltage(k));
        k=k+1;
    elseif mod(i,2)==1
        current(j)=str2num(fscanf(s,'%c'));
        disp(current(j));
        j=j+1;
    end
end
fclose(s);
toc

 voltage1=voltage';      %Voltage_Value
 current1=current';      %Current_Value


