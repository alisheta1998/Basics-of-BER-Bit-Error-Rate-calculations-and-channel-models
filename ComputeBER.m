function BER = ComputeBER(bit_seq,rec_bit_seq)
%
% Inputs:
%   bit_seq:     The input bit sequence
%   rec_bit_seq: The output bit sequence
% Outputs:
%   BER:         Computed BER
%
% This function takes the input and output bit sequences and computes the
% BER

%%% WRITE YOUR CODE HERE
N_errors = biterr(bit_seq,rec_bit_seq);
N_bits = length(bit_seq);
BER = N_errors / N_bits ;
%%%
