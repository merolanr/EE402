function ShEn = jShannonEntropy(X,channel) 
temp_ShEn = transpose(zeros(1, 50)); %init mean 
start_of_section = 1;
end_of_section = 3072; %each epoch consists of 3072 cells
for i = 1:50

% Convert probability using energy
    P    = (X(start_of_section:end_of_section, channel + 1).^ 2) ./ sum(X(start_of_section:end_of_section, channel + 1).^ 2);
    % Entropy 
    En   = P .* log2(P);
    temp_ShEn(i,:) = -sum(En); 
    start_of_section = start_of_section + 3072;
    end_of_section = end_of_section + 3072;
end
ShEn = temp_ShEn;
end

