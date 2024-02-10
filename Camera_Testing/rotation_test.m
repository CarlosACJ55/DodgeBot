lat0 = 0;
log0 = 0;
t1_0 = lat0;
t2_0 = log0;
lat = 0;
log = 0;
t1 = lat;
t2 = log;
x = 0;
y = .61;
R = 1.01;
rho = sqrt(x^2 + y^2);
c = atan(rho/R);

log = log0 + atan((x*sin(c))/((rho*cos(lat0)*cos(c))-(y*sin(lat0)*sin(c))));
lat = asin(cos(c)*sin(lat0) + ((y*sin(c)*cos(lat0))/rho));


t1 = 90 * (pi/180);
t2 = (90+54) * (pi/180);
x = R * cos(t1) * cos(t2);
y = R * sin(t1) * cos(t2);
z = R * sin(t2);