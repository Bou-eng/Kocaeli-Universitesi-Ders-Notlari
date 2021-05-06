% Newton-Raphson Extremum Nokta Bulma Y�ntemi
% f = ama� fonksiyonu
% df = ama� fonksiyonunun t�revi
% d2f = ama� fonksiyonunun ikinci t�revi
% x0 = f in aranan extremum nokta x'in ba�lang�� de�eri
% k = i�lem ad�m(iterasyon) say�s�
% y = fonksiyonun de�eri
% f = (3x-2)^2(2x-3)^2 fonksiyon
% df = 72x^3-234x^2+241x-78
% d2f = 216x^2-468x+241
clear
clc
clf
x0=10;
k=1;
x(k)=x0;
f(k) = (3*x(k)-2)^2*(2*x(k)-3)^2;
df(k) = 72*x(k)^3-234*x(k)^2+241*x(k)-78;
d2f(k) = 216*x(k)^2-468*x(k)+241;
format shortg
for k=2:15
x(k)=x(k-1)-(df(k-1)/d2f(k-1));
f(k) = (3*x(k)-2)^2*(2*x(k)-3)^2;
df(k) = 72*x(k)^3-234*x(k)^2+241*x(k)-78;
d2f(k) = 216*x(k)^2-468*x(k)+241;
% Hatay(k)=abs(df(k)-df(k-1));
end
disp(' ')
disp(' ------------------------')
disp(' (3x-2)^2(2x-3)^2 Fonksiyonunun ')
disp(' Newton Raphson ile ')
disp(' Ekstremum noktas�n�n bulunmas�')
CIKIS=[x' f' df' d2f'];
disp(' ------------------------')
disp(' x f df d2f')
disp(' ---------------------------------------------')
disp(CIKIS)
disp(' ---------------------------------------------')
clf
plot(x, f )
title('Fonksiyon Grafi�i')
grid
xlabel('x')
ylabel('f')