function st=catn(s,dlm)

% GISTIC software version 2.0
% Copyright (c) 2011-2017 Gad Getz, Rameen Beroukhim, Craig Mermel,
% Jen Dobson, Steve Schumacher, Nico Stransky, Mike Lawrence, Gordon Saksena
% All Rights Reserved.
% (See the accompanying LICENSE file for licensing details.)


if ~exist('dlm','var')
  dlm=9;
end

if iscell(s)
  s=strvcat(s);
end
  
% st=sprintf('%d\t%s\n',(1:size(s,1)),s');
st=[num2str((1:size(s,1))') repmat(dlm,size(s,1),1) s];
