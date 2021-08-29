% read excel file
pkg load io

param = xlsread ('input_columns_CIR.xlsx', 'input', 'B1:ZZZ50');

n_parameters = 233;

output_param_all = zeros(11,n_parameters);

for ii = 1:n_parameters
  
  close all;
  output_param_all(:,ii) = CUMBIACIR_practice(ii);
  
  disp(ii)  
end

output_param_all;

xlswrite('output_columns_CIR.xlsx',output_param_all)