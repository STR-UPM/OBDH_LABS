function Quaternions = E321_to_quat (euler)

% This function transfer the 313 euler orders to Quaternion in which 
% the scalar quantity is the last one ;

phi = euler(:,1);
teta = euler(:,2);
psi  = euler(:,3);

eta(:,1) = 0.5 .* sqrt(1 + cos(teta) .* cos(psi) + cos(phi) .* cos(psi) + sin(phi) .* sin(teta) .* sin(psi) + cos(phi) .* cos(teta));
epsilon(:,1) = (sin(phi) .* cos(teta) + sin(phi) .* cos(psi) - cos(phi) .* sin(teta) .* sin(psi))./(4.*eta);
epsilon(:,2) = (sin(phi) .* sin(psi) + cos(phi) .* sin(teta) .* cos(psi) + sin(teta))./(4.*eta);
epsilon(:,3) = (sin(psi) .* cos(teta) + cos(phi) .* sin(psi) - sin(phi) .* sin(teta) .* cos(psi))./(4.*eta);

Quaternions = [epsilon(:,1) epsilon(:,2) epsilon(:,3) eta(:,1)];
