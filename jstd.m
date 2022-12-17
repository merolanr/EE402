function jstd = jstd(X, channel)
temp_std = transpose(zeros(1, 50)); %init mean 
start_of_section = 1;
end_of_section = 3072; %each epoch consists of 3072 cells
for i = 1:50
    temp_std(i,:) = std(X(start_of_section:end_of_section, channel + 1)); 
    start_of_section = start_of_section + 3072;
    end_of_section = end_of_section + 3072;
end

jstd = temp_std;

end
