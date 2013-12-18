function coloredCampanile(length, angle, color)
    
    view(3); %view it in 3D

    out = length/2; %finds the length from origin
    x=[out, out, (out.*-1), (out.*-1), out]; 
    y=[out, (out.*-1), (out.*-1), out, out];
    z=[0 0 0 0 0];
    plot3(x,y,z,color(1)); %plots the original square
    hold on %more squares to be plotted 
    rotation=0;
    
    if length>=1
        helper(length, z, color, rotation, angle); %calls helper function
    end
    
    hold off % boom done.
end


function helper(length, z, color, rotation, angle)
    length=length*.9; % The squares get smaller
    color=[color(2:end) color(1)]; % fun with colors

    if length >= 1 
        rotation=rotation+angle; %changes the rotation angle from the original square
        z = z+1; %raises each level of the campanile
        out=length/2; 
        x = [out, out, (out*-1), (out*-1), out];
        y = [out, (out*-1), (out*-1), out, out];
        mat = [x;y]; %creates rotation matrix
        rotM = [cos(rotation), -sin(rotation); sin(rotation), cos(rotation)];
        turn = rotM*mat; % change the angle every time through
        plot3(turn(1,:), turn(2,:), z, color(1)); %plots the new sqaure with the correct color

        helper(length, z, color, rotation, angle); %RECURSION
    
    end
    
    axis equal
    %  Title the graph as 'My Campanile'.
    title('My Campanile')
    %  Labeling the x-axis as 'x-axis'.
    xlabel('x-axis')
    %  Labeling the y-axis as 'y-axis'. 
    ylabel('y-axis')
    %  Labeling the y-axis as 'y-axis'. 
    zlabel('z-axis')

end
