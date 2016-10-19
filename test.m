function test()   
    l1 = 14.4; l2 = 13.13; l3  = 7.5; % in inches

    temp = load('IKnet.mat');
            IKnet = temp.IKnet; clear temp;
     temp = load('FKnet.mat');
            FKnet = temp.FKnet; clear temp;
            
    tempAng = RandAngleGen(1,1);
    tempCoord = FKnet(tempAng');

    temp1Ang = IKnet(tempCoord);
    temp1Coord = FKnet(temp1Ang);
    
    a1 = num2str(rad2deg(temp1Ang(1)));
    a2 = num2str(rad2deg(temp1Ang(2)));
    a3 = num2str(rad2deg(temp1Ang(3)));
    
     % temp variables to show arm bones
     x1 = l1*cos(temp1Ang(1)) ;
     x2 = x1+ l2*cos(temp1Ang(1)+temp1Ang(2));
     x3 = x2+ l3*cos( sum(temp1Ang));
     y1 = l1*sin(temp1Ang(1));
     y2 = y1+ l2*sin(temp1Ang(1)+temp1Ang(2));
     y3 = y2+ l3*sin( sum(temp1Ang)) ;
    
     
     
    figure; hold on;
    plot(tempCoord(1), tempCoord(2), 'or', 'MarkerFace', 'y', 'MarkerSize',10);
    plot(temp1Coord(1), temp1Coord(2), '*k', 'MarkerSize', 8);
    plot([0 temp1Coord(1)], [0 temp1Coord(2)], ':r');
    plot([0 x1],[0 y1], '-b');
    plot([x1 x2],[y1 y2], '-g');
    plot([x2 x3],[y2 y3],'-m');
    plot([0 l1+l2+l3], [0 0],'-sc', 'MarkerFace','c','LineWidth',2);plot(l1+l2+l3, 0, 'sk'); plot(l1+l2, 0,'sk', 'MarkerFace', 'c'); plot(l1, 0, 'sk', 'MarkerFace','c');
    plot([-38 +38], [0 0], '-.k', 'MarkerSize', 2 ); plot([0 0],[-30 +30],'-.k', 'MarkerSize', 2);
    plot(x1,y1, 'ok', 'MarkerSize',3); plot(x2,y2,'ok', 'MarkerSize', 3);
    VisualizeRandomDistee();
    xlabel('x-axis'); ylabel('y-axis'); title('3DoF arm fetching a target');
    legend('target', 'end-effector','apparent','humerus', 'radius+ulna', 'phal.+metacar.+car.', 'rest');
    text(0,0,a1); text(x1,y1,a2); text(x2,y2,a3);
    text(-1.7, -1.7, '(shoulder)'); text(x1+1.7,y1+1.7, '(elbow)');
    text(x2+1.7,y2+1.7,'(wrist)'); 
    text(l1+1,1,'elbow-rest'); text(l2+l1+1,1,'wrist-rest'); text(l1+l2+l3+1,+1, 'ef-rest');
    text(-39,-1,'Pi'); text(39,-1,'0 (/2.Pi)');text(-1,39,'Pi/2'); text(-1,-39,'3/2.Pi');
    hold off;
end
    
    
    