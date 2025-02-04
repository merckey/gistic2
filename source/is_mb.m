function res=is_mb(C)
%IS_MB - determine if genomic position is in megabase or base units

% GISTIC software version 2.0
% Copyright (c) 2011-2017 Gad Getz, Rameen Beroukhim, Craig Mermel,
% Jen Dobson, Steve Schumacher, Nico Stransky, Mike Lawrence, Gordon Saksena
% All Rights Reserved.
% (See the accompanying LICENSE file for licensing details.)

if isfield(C,'isMB')
    res = C.isMB;
else
    res=(mean(C.pos)<10000); % in Mb
end

