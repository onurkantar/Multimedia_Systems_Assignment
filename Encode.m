function [x] = Encode(input_arr)
arr_len = length(input_arr)%getting array length for loops and array initialitions
%creating return array which is original signal
ret_arr = 1:arr_len
%first two input part
ret_arr(1) = input_arr(1)
ret_arr(2) = ret_arr(1) + input_arr(2)
%for rest of inputs
for i = 3:arr_len
    ret_arr(i) = (ret_arr(i-1)+ret_arr(i-2))/2 + input_arr(i)
end
%assigning return array
x = ret_arr

end