function F = SetupEvaluationVariable(varargin)
dbstack
error('OBSOLETE CODE')
z_normalizing = varargin{end};
X = varargin{3};
n = length(X);
if isequal(getbase(X),[zeros(n,1) eye(n)])
    F = ([]);
else
    dX = double(X);
    if ~all(isnan(dX))
        assign(z_normalizing,double(X));
    end
    F = (X == z_normalizing);
end