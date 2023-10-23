
# #print array elements
# arr=(11 3 5)
# for val in "${arr[@]}"
# do
# echo "$val"
# done


# #print array index -> 0 1 2 print hobe
# arr=(11 3 5)
# for idx in "${!arr[@]}"
# do
# echo "$idx"
# done




# arr=(11 3 5)
# idx=1
# echo "${arr[1]}"
# echo "${arr[$idx]}"




# explicit indexing 
arr=([0]=11 [2]=3 [5]=5)

for idx in "${!arr[@]}"
do
    echo "val at $idx is ${arr[$idx]}"
done