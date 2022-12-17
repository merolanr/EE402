function HM = jHjorthMobility(X,channel)
temp_mobility = transpose(zeros(1, 50)); %init mean 
start_of_section = 1;
end_of_section = 3072; %each epoch consists of 3072 cells
for i = 1:50
% First derivative
    x0  = X(start_of_section:end_of_section, channel+1);
    x1  = diff([0; x0]); 
    % Standard deviation 
    sd0 = std(x0); 
    sd1 = std(x1);
    temp_mobility(i,:) = sd1 / sd0; 
    start_of_section = start_of_section + 3072;
    end_of_section = end_of_section + 3072;
end
HM  = temp_mobility;
end

