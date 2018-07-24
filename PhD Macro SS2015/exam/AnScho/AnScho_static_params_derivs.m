function [rp, gp, rpp, gpp, hp] = AnScho_static_params_derivs(y, x, params)
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

bet__ = 1/(1+params(8)/400);
rp = zeros(9, 13);
rp(1, 1) = (y(4)-y(3)-y(6))*(-1)/(params(1)*params(1));
rp(2, 2) = (-(y(1)-y(5)));
rp(2, 8) = (-(y(3)*(-0.0025)/((1+params(8)/400)*(1+params(8)/400))));
rp(4, 3) = (-(y(3)*(1-params(5))));
rp(4, 4) = (-((y(1)-y(5))*(1-params(5))));
rp(4, 5) = (-(y(4)+y(3)*(-params(3))+(y(1)-y(5))*(-params(4))));
rp(4, 11) = (-(x(3)*0.01));
rp(5, 6) = (-y(5));
rp(5, 12) = (-(x(2)*0.01));
rp(6, 7) = (-y(6));
rp(6, 13) = (-(x(1)*0.01));
rp(7, 10) = (-1);
rp(8, 9) = (-1);
rp(9, 8) = (-1);
rp(9, 9) = (-1);
rp(9, 10) = (-4);
gp = zeros(9, 9, 13);
gp(1, 3, 1) = (-((-1)/(params(1)*params(1))));
gp(1, 4, 1) = (-1)/(params(1)*params(1));
gp(1, 6, 1) = (-((-1)/(params(1)*params(1))));
gp(2, 1, 2) = (-1);
gp(2, 3, 8) = (-((-0.0025)/((1+params(8)/400)*(1+params(8)/400))));
gp(2, 5, 2) = 1;
gp(4, 1, 4) = (-(1-params(5)));
gp(4, 1, 5) = params(4);
gp(4, 3, 3) = (-(1-params(5)));
gp(4, 3, 5) = params(3);
gp(4, 4, 5) = (-1);
gp(4, 5, 4) = 1-params(5);
gp(4, 5, 5) = (-params(4));
gp(5, 5, 6) = (-1);
gp(6, 6, 7) = (-1);
if nargout >= 3
rpp = zeros(4,4);
rpp(1,1)=1;
rpp(1,2)=1;
rpp(1,3)=1;
rpp(1,4)=(y(4)-y(3)-y(6))*(params(1)+params(1))/(params(1)*params(1)*params(1)*params(1));
rpp(2,1)=2;
rpp(2,2)=8;
rpp(2,3)=8;
rpp(2,4)=(-(y(3)*(-((-0.0025)*((1+params(8)/400)*0.0025+(1+params(8)/400)*0.0025)))/((1+params(8)/400)*(1+params(8)/400)*(1+params(8)/400)*(1+params(8)/400))));
rpp(3,1)=4;
rpp(3,2)=3;
rpp(3,3)=5;
rpp(3,4)=y(3);
rpp(4,1)=4;
rpp(4,2)=4;
rpp(4,3)=5;
rpp(4,4)=y(1)-y(5);
gpp = zeros(7,5);
gpp(1,1)=1;
gpp(1,2)=3;
gpp(1,3)=1;
gpp(1,4)=1;
gpp(1,5)=(-((params(1)+params(1))/(params(1)*params(1)*params(1)*params(1))));
gpp(2,1)=1;
gpp(2,2)=4;
gpp(2,3)=1;
gpp(2,4)=1;
gpp(2,5)=(params(1)+params(1))/(params(1)*params(1)*params(1)*params(1));
gpp(3,1)=1;
gpp(3,2)=6;
gpp(3,3)=1;
gpp(3,4)=1;
gpp(3,5)=(-((params(1)+params(1))/(params(1)*params(1)*params(1)*params(1))));
gpp(4,1)=2;
gpp(4,2)=3;
gpp(4,3)=8;
gpp(4,4)=8;
gpp(4,5)=(-((-((-0.0025)*((1+params(8)/400)*0.0025+(1+params(8)/400)*0.0025)))/((1+params(8)/400)*(1+params(8)/400)*(1+params(8)/400)*(1+params(8)/400))));
gpp(5,1)=4;
gpp(5,2)=1;
gpp(5,3)=4;
gpp(5,4)=5;
gpp(5,5)=1;
gpp(6,1)=4;
gpp(6,2)=3;
gpp(6,3)=3;
gpp(6,4)=5;
gpp(6,5)=1;
gpp(7,1)=4;
gpp(7,2)=5;
gpp(7,3)=4;
gpp(7,4)=5;
gpp(7,5)=(-1);
end
if nargout >= 5
hp = zeros(0,5);
end
end