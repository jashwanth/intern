% plotCamera - Plots a camera in a figure as a piramid with the center of
% the camera in the vertnex
%
%
% Input  - R         -> (3x3) Rotation matrix
%        - T         -> (3x1) Translation vector
%        - f         -> (1x1) Focal length
%        - imageSize -> (2x1) Size of image
%        - figureH   -> (1x1) Figure handler 
%        - plot      -> (1x1) Plot or not
%
% Output - ccnn       -> (3x1) Camera center
%
%
%
% Author: Isaac Esteban
% IAS, University of Amsterdam
% TNO Defense, Security and Safety
% isaac@fit3d.info
% isaac.esteban@tno.nl
% Copyright TNO - 2010

function ccn = my_plotCamera(r,t,f,size,h, plot)

% Calculate 4 points (camera center at origin)
% Camera center
cc = [0;0;0];
% Left top corner
lt = [-size(1)/2;size(2)/2;f];
% Right top corner
rt = [size(1)/2;size(2)/2;f];
% Left bottom corner
lb = [-size(1)/2;-size(2)/2;f];
% Right bottom corner
rb = [size(1)/2;-size(2)/2;f];


% Rotate and translate all 5 points
ccn = r*(cc+t);
ltn = r*(lt+t);
rtn = r*(rt+t);
lbn = r*(lb+t);
rbn = r*(rb+t);

% Plot camera
if(plot)
%     figure(figureH), line([ccnn(1),ltnn(1)],[ccnn(2),ltnn(2)],[ccnn(3),ltnn(3)]);
%     figure(figureH), line([ccnn(1),rtnn(1)],[ccnn(2),rtnn(2)],[ccnn(3),rtnn(3)]);
%     figure(figureH), line([ccnn(1),lbnn(1)],[ccnn(2),lbnn(2)],[ccnn(3),lbnn(3)]);
%     figure(figureH), line([ccnn(1),rbnn(1)],[ccnn(2),rbnn(2)],[ccnn(3),rbnn(3)]);
% 
%     figure(figureH), line([rtnn(1),ltnn(1)],[rtnn(2),ltnn(2)],[rtnn(3),ltnn(3)]);
%     figure(figureH), line([rbnn(1),ltnn(1)],[rbnn(2),ltnn(2)],[rbnn(3),ltnn(3)]);
%     figure(figureH), line([rtnn(1),lbnn(1)],[rtnn(2),lbnn(2)],[rtnn(3),lbnn(3)]);
%     figure(figureH), line([rbnn(1),lbnn(1)],[rbnn(2),lbnn(2)],[rbnn(3),lbnn(3)]);
%     figure(figureH), line([ltnn(1),lbnn(1)],[ltnn(2),lbnn(2)],[ltnn(3),lbnn(3)]);
%     figure(figureH), line([rtnn(1),rbnn(1)],[rtnn(2),rbnn(2)],[rtnn(3),rbnn(3)]);
     if isempty(get(h,'children'))
     figure(h), plot3([ccn(1),ltn(1)],[ccn(2),ltn(2)],[ccn(3),ltn(3)]);
     else
         figure(h),line([ccn(1),ltn(1)],[ccn(2),ltn(2)],[ccn(3),ltn(3)]);
     end 
     figure(h), line([ccn(1),lbn(1)],[ccn(2),lbn(2)],[ccn(3),lbn(3)]);
     figure(h), line([ccn(1),rtn(1)],[ccn(2),rtn(2)],[ccn(3),rtn(3)]);
     figure(h), line([ccn(1),rbn(1)],[ccn(2),rbn(2)],[ccn(3),rbn(3)]);
     figure(h), line([ltn(1),rtn(1)],[ltn(2),rtn(2)],[ltn(3),rtn(3)]);
     figure(h), line([ltn(1),lbn(1)],[ltn(2),lbn(2)],[ltn(3),lbn(3)]);
     figure(h), line([lbn(1),rbn(1)],[lbn(2),rbn(2)],[lbn(3),rbn(3)]);
     figure(h), line([rbn(1),rtn(1)],[rbn(2),rtn(2)],[rbn(3),rtn(3)]);
    
 %    text(ccnn(1),ccnn(2),'\leftarrowcam_center','FontSize',16);
    
    
end;