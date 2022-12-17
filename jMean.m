function jMEAN = jMean(X, channel)
temp_mean = transpose(zeros(1, 50)); %init mean 
start_of_section = 1;
end_of_section = 3072; %each epoch consists of 3072 cells
for i = 1:50
    temp_mean(i,:) = mean(X(start_of_section:end_of_section, channel + 1)); 
    start_of_section = start_of_section + 3072;
    end_of_section = end_of_section + 3072;
end

jMEAN = temp_mean;

end
