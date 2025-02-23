function [v] = calVol(hs,dcil,acil,dcon,acon)
%Funcion que calcula el volumen del agua perteneciente a un tanque
%de agua con una base cilíndrica y una parte superior cónica
    rmin = dcil/2;
    rmax = dcon/2;
if hs <= acil
    if hs == acil
        v = (pi * rmin^2)*hs;
    else
        hcil = hs;
        v = (pi * rmin^2)*hcil;
    end
else 
    vC = (pi * rmin^2)*acil;
    hcon = hs - acil;
    if hcon == acon
        vCon = pi/3 * acon * (rmin^2 * (rmin * rmax) * rmax^2);
        v = vC + vCon;
    else
        if hcon < acon
        rcon1 = rmax-rmin;
        rcon2 = (rcon1 * hcon)/acon;
        rhcon = rcon2 + rmin;
        
        vCon = 1/3 * pi * hcon * (rmin^2 + (rmin * rhcon) + rhcon^2);
        v = vC + vCon;
        end
    end 
end 
end