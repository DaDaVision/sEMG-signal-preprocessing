% �˲�

data = xlsread('MyoRight-ztd-dajia-30-emg-1519732926.csv');
e = data(:,2);

%ԭʼ�ź�
subplot(2,2,1); 
plot(e) ;
xlabel('1 ����������');
ylabel('ԭʼ�źŷ�ֵ');
grid ;

%minimaxiԭ��С��ȥ��
s1=wden(e,'minimaxi','s','one',5,'db12');  
subplot(2,2,2);  
plot(s1); 
xlabel('2 ��db12������ź�' ) ;  
ylabel ('db12С���������źŷ�ֵ');  
grid; 

%heursureԭ��С��ȥ��
s2=wden(e,'heursure','s','one',5,'sym8');  
subplot(2,2,3);  
plot(s2);
xlabel('3 ��sym������ź�');  
ylabel('sym8С���������źŷ�ֵ'); 
grid;  

%sqtwologԭ��С��ȥ��
s3=wden(e,'sqtwolog','s','one',5,'bior3.9');  
subplot(2,2,4);  
plot(s3);
xlabel('4 ��bior3.9������ź�');  
ylabel('bior3.9С���������źŷ�ֵ'); 
grid;  

