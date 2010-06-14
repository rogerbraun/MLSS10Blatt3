% Dieser Abschnitt zeichnet die 3 Funktionen

d = 100;
temp = linspace(-10,10,d);
[x,y] =  meshgrid(temp,temp);
X = [x(:),y(:)];

%Z1 = mvnpdf(X,0,[1,0;0,1]);
Z4 = p_x_w1(X);
Z4_r =reshape(Z4,d,d);
surfc(x,y,Z4_r);

hold on;
%Z2 = mvnpdf(X,[1,1],[1,0;0,1]);
Z5 = p_x_w2(X);

Z5_r = reshape(Z5,d,d);
surfc(x,y,Z5_r);
%hold;
%Z3 = mvnpdf(X,[0.5,0.5],[1,0;0,1]) + mvnpdf(X,[-0.5,0.5],[1,0;0,1]);
Z6 = p_x_w3(X);
Z6_r = reshape(Z6,d,d);
surfc(x,y,Z6_r)

hold off;
figure;
Z1 = p_w1(X);
Z1_r =reshape(Z1,d,d);
surfc(x,y,Z1_r);

hold on;
%Z2 = mvnpdf(X,[1,1],[1,0;0,1]);
Z2 = p_w2(X);

Z2_r = reshape(Z2,d,d);
surfc(x,y,Z2_r);
%hold;
%Z3 = mvnpdf(X,[0.5,0.5],[1,0;0,1]) + mvnpdf(X,[-0.5,0.5],[1,0;0,1]);
Z3 = p_w3(X);
Z3_r = reshape(Z3,d,d);
surfc(x,y,Z3_r)

%P(w_k) = 1/3
%p(x|w1) = N(0,I)
%p(x|w2) = N((1,1)',I)
%p(x|w3) = N((0.5,0.5)',I) + N((-0.5,0.5)',I)

%p(w1|x) = (p(x|w1) * P(w1)) / P(x) 
% P(x) = INT p(x,w1) dw1 = INT p(x|w1) * p(w_k)
% P(w_k) ist konstant für all  P(x) ist konstant für alle p.

% Für 3,3
p_w1([3,3]) 
p_w2([3,3]) % Ist am größten, daher w2
p_w3([3,3])
%


% (c)
% Die Marginalisierungen für (0.3,*) 
F1 = @(t)p_w1([repmat(0.3,size(t(:))),t(:)]);
x1 = quad(F1,-10,10)
F2 = @(t)p_w2([repmat(0.3,size(t(:))),t(:)]);
x2 = quad(F2,-10,10)
F3 = @(t)p_w3([repmat(0.3,size(t(:))),t(:)]);
x3 = quad(F3,-10,10)


% (b)
% Die Marginalisierungen für (*, 0.3)
F4 = @(t)p_w1([t(:),repmat(0.3,size(t(:)))]);
x4 = quad(F4,-10,10)
F5 = @(t)p_w2([t(:),repmat(0.3,size(t(:)))]);
x5 =quad(F5,-10,10)
F6 = @(t)p_w3([t(:),repmat(0.3,size(t(:)))]);
x6= quad(F6,-10,10)


% Diese Auswertungen ergeben:

%ans =
%
%    0.3774

%
%ans =
%
%    0.3194
%
%
%ans =
%
%    0.6754
%
%
%ans =
%
%    0.3774
%
%
%ans =
%
%    0.3194
%
%
%ans =
%
%    0.7869


% Ab hier nur noch Visualisierung für mich
%hold off;
% graphen für die verteilungen bei (x,1/3);
%figure;
%[x2,y2] = meshgrid(temp,linspace(1/3,1/3,d));
%temp2=linspace(1/3,1/3,d);
%X2 = [temp(:),temp2(:)];
%Z4 = p_w1(X2);
%plot(temp,Z4)
%
%figure;
%Z5 = p_w2(X2);
%plot(temp,Z5);
%
%figure;
%Z6 = p_w3(X2);
%plot(temp,Z6);

