% lat0 = 0;
% log0 = 0;
% t1_0 = lat0;
% t2_0 = log0;
% lat = 0;
% log = 0;
% t1 = lat;
% t2 = log;
% x = 0;
% y = .61;
% R = 1.01;
% rho = sqrt(x^2 + y^2);
% c = atan(rho/R);
% 
% log = log0 + atan((x*sin(c))/((rho*cos(lat0)*cos(c))-(y*sin(lat0)*sin(c))));
% lat = asin(cos(c)*sin(lat0) + ((y*sin(c)*cos(lat0))/rho));
% 
% 
% t1 = 90 * (pi/180);
% t2 = (90+54) * (pi/180);
% x = R * cos(t1) * cos(t2);
% y = R * sin(t1) * cos(t2);
% z = R * sin(t2);
p2 = [.75, .75];
p1 = [.25, .5];
avg_p = (p1 + p2) / 2;
robot_loc = [.1, .1];
p_v = robot_loc - p1;
avg_p_v= avg_p - robot_loc;
avg_p_v_hat = avg_p_v./norm(avg_p_v);
perp_v1 = [-1 * p_v(2), p_v(1)];
perp_v1_hat = perp_v1./norm(perp_v1);
perp_v2 = [p_v(2), -1*p_v(1)];
perp_v2_hat = perp_v2./norm(perp_v2);
test = pdist2(perp_v1_hat, avg_p_v_hat);
test2 = pdist2(perp_v2_hat, avg_p_v_hat);

if test > test2
    main_v = perp_v1_hat;
else
    main_v = perp_v2_hat;
end
