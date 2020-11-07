function rec_bit_seq = DecodeBitsFromSamples(rec_sample_seq,case_type,fs)
%
% Inputs:
%   rec_sample_seq: The input sample sequence to the channel
%   case_type:      The sampling frequency used to generate the sample sequence
%   fs:             The bit flipping probability
% Outputs:
%   rec_sample_seq: The sequence of sample sequence after passing through the channel
%
% This function takes the sample sequence after passing through the
% channel, and decodes from it the sequence of bits based on the considered
% case and the sampling frequence

if (nargin <= 2)
    fs = 1;
end

switch case_type
    
    case 'part_1'
        %%% WRITE YOUR CODE FOR PART 1 HERE
        % A simple reciever with no changes to data from channel
        rec_bit_seq = rec_sample_seq ;
        %%%
    case 'part_2'
        %%% WRITE YOUR CODE FOR PART 2 HERE
        rec_bit_seq = zeros(1,length(rec_sample_seq/fs));
        for i= 1 : fs : length(rec_sample_seq)
           if( nnz(rec_sample_seq(i:i+fs-1)) >= fs/2 ) %nnz->Number of nonzero matrix elements
               rec_bit_seq(i)=1;
           else
               rec_bit_seq(i)=0;
           end
        end
        rec_bit_seq=downsample(rec_bit_seq,fs);
        %%%
    case 'part_3'
        %%% WRITE YOUR CODE FOR PART 3 HERE
        rec_bit_seq = rec_sample_seq ;
        rec_bit_seq=downsample(rec_bit_seq,fs);
        %%%
end