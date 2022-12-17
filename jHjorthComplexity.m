function HC = jHjorthComplexity(X,channel)
% First & second derivative
temp_complexity = transpose(zeros(1, 50)); %init mean 
start_of_section = 1;
end_of_section = 3072; %each epoch consists of 3072 cells
for i = 1:50
    x0  = X(start_of_section:end_of_section, channel+1);
    x1  = diff([0; x0]);
    x2  = diff([0; x1]);
    % Standard deviation of first & second derivative 
    sd0 = std(x0);
    sd1 = std(x1);
    sd2 = std(x2); 
    % Complexity
    temp_complexity(i,:) = (sd2 / sd1) / (sd1 / sd0); 
    start_of_section = start_of_section + 3072;
    end_of_section = end_of_section + 3072;
end
HC = temp_complexity;
end
