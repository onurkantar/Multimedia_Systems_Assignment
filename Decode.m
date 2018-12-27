function [x, y] = Decode(input_arr)
arr_len = length(input_arr)%getting array length for loops and array initialitions
encode_arr = 1:arr_len
bi_stream = 1:arr_len
%first input part
encode_arr(1) = input_arr(1)
bi_stream(1) = input_arr(1)
fhat = input_arr(1)
%after then first input
for i = 2:arr_len
    fn=input_arr(i)
    if i>2
        fhat=(encode_arr(i-1)+encode_arr(i-2))/2
    end
    en = fn-fhat
    etildan = (16*ceil(en/16))-8
    ftildan = fhat + etildan
    encode_arr(i) = ftildan
    bi_stream(i) = etildan
end

%assigning return values
 x = encode_arr
 y=bi_stream


end