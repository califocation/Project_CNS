function temp = FK_formula(t)

t=t';
% stattic global values
l1 = 14.4; l2 = 13.13; l3  = 7.5; % in inches

t_x =  l1.*cos(t(1,:)) + l2.*cos(t(1,:)+t(2,:))...
                + l3.*cos(t(1,:)+t(2,:)+t(3,:));
            
t_y  = l1.*sin(t(1,:)) + l2.*sin(t(1,:)+t(2,:))...
                + l3.*sin(t(1,:)+t(2,:)+t(3,:));
t_o = sum(t,1);        
            temp = [t_x(:) t_y(:) t_o(:)];
end
            
