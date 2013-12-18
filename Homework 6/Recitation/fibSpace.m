function [seq] = fibSpace(high)
seq = [0 1];
go = true;
while go 
    new = seq(end)+seq(end-1)
    seq = [seq new]
    if seq(end) >= high
        go = false;
        seq(end) = [];
    end
    
end