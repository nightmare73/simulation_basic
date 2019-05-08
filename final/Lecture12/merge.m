function z = merge(x,y)
nx = length(x); ny = length(y);
z = zeros(1, nx+ny);
ix = 1; iy = 1; iz = 1;
while ix<=nx && iy<=ny
    if	x(ix) <= y(iy)
        z(iz)= x(ix);	ix=ix+1;
        iz=iz+1;
    else
        z(iz)= y(iy);
        iy=iy+1;
        iz=iz+1;
    end
end
while ix<=nx	% copy remaining x-values  
    z(iz)= x(ix);	ix=ix+1;	iz=iz+1;
end
while iy<=ny	% copy remaining y-values  
    z(iz)= y(iy);	iy=iy+1;	iz=iz+1;
end
