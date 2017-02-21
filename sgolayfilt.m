function G = sgolayfilt(k,f)
%SGOLAYFILT  Savitzky-Golay differentiation filters
%   G = SGOLAYFILT(K,F) returns the matrix G of differentiation filters. The
%   polynomial order, K, must be a integer less than window size, F, which must
%   be an odd integer. If the polynomial order, K, equals F-1, no smoothing will
%   occur. Each of the K+1 columns of G is a differentiation filter for
%   derivatives of order P-1 where P is the column index.
%   
%   Example:
%       % Smooth noisy sinusoid and calculate first derivative
%       K = 4; F = 55;
%       G = sgolayfilt(K,F);
%       dt = 5e-2; t = 0:dt:4*pi;
%       y = sin(t)+1e-2*randn(size(t));    % Noisy sinusoid
%       yG0 = conv(y,G(:,1).','same');     % 0-th derivative, smoothed
%       yG1 = conv(y,G(:,2).','same')/dt;  % 1-st derivative, smoothed
%       figure; plot(t,y,'k',t,yG0,'b',t,yG1,'r');
%       legend('Noisy','Savitzky-Golay smoothed',...
%              'Savitzky-Golay smoothed first derivative');
%   
%   See also SGOLAY

%   Andrew D. Horchler, horchler @ gmail . com, Created 12-16-11
%   Revision: 1.0, 4-7-16


if nargin < 2
    error('sgolayfilt:TooFewInputs','Not enough input arguments.');
end

if ~isscalar(k) || ~isfinite(k) || ~isreal(k)
    error('sgolayfilt:NonFiniteRealK',...
          'The polynomial order, K, must be a finite real integer.');
end
if ~isscalar(f) || ~isfinite(f) || ~isreal(f)
    error('sgolayfilt:NonFiniteRealF',...
          'The window size, F, must be a finite real integer.');
end

if f < 1 || f ~= floor(f) || mod(f,2) ~= 1
    error('sgolayfilt:InvaildF',...
          'The window size, F, must be an odd integer greater than 0.');
end
if k < 0 || k >= f || k ~= floor(k)
    error('sgolayfilt:InvaildK',...
         ['The polynomial order, K, must be an odd integer greater than the '...
          'window size, F.']);
end

s = vander(0.5*(1-f):0.5*(f-1));
S = s(:,f:-1:f-k);
[~,R] = qr(S,0);
G = S/R/R';