function [tb_ver, sw_ver] = tf_version;
%function [tb_ver, sw_ver] = tf_version;
%
% tf_version :  returns the toolbox version and the version of
%               the interpreter running the software. When the
%               function is called without output arguments, the
%               version information is displayed in the command
%               window. 
%
% tb_ver :  a string with the toolbox version.
% sw_ver :  a string describing the software interpreter and its
%           version
%

% initial revision, Ulf Griesmann, NIST, Feb 2011
%

% toolbox version and version date
tb_version = '70+ (beta)';
tb_date = '2015-October-12';
ltb_ver = [tb_version, '  (', tb_date, ')'];
if exist('OCTAVE_VERSION')
    interpreter = 'Octave';
else
    interpreter = 'MATLAB';
end
lsw_ver = [interpreter, ' ',version];

if nargout == 0

   fprintf('\n-----------------------------------------------------\n');
   fprintf('Interpreter version       : %s\n', lsw_ver);
   fprintf('Thin Film Toolbox version : %s\n', ltb_ver);
   fprintf('-----------------------------------------------------\n\n');

else
  
   tb_ver = ltb_ver;
   if nargout > 1
      sw_ver = lsw_ver; 
   end
    
end

return
