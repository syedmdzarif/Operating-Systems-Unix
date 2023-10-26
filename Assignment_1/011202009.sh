#!/bin/bash

cd Grades 
tail -n 7 grades.csv > without_heading_grades.txt      # remove the first line heading

cut -d , -f 1 without_heading_grades.txt > only_range.txt      #seperate only the marks range
cut -d , -f 2 without_heading_grades.txt > only_grade.txt      #seprate only the grade 


export COUNT=1

arr=()
while read line
    do
    # echo "$line"
    export a=2
    export b=5
    if [ $COUNT -lt $a ];then
        echo "$line" > range_row.txt
        val1=100
        val2=$(cut -d + -f 1 range_row.txt)
        arr+=$val1
        arr+=$val2

    elif [ $COUNT -ge $a ] && [ $COUNT -le $b ];then
        echo "$line" > range_row.txt
        val1=$(cut -d - -f 1 range_row.txt)
        val2=$(cut -d - -f 2 range_row.txt)
        # echo $val1
        # echo $val2
    
        arr+=$val1
        arr+=$val2

        
    elif [ $COUNT -eq $((b+1)) ];then
        echo "$line" > range_row.txt
        val1=$(cut -d '<' -f 2 range_row.txt)
        val2=0
        arr+=$val1
        arr+=$val2
    fi
    
    
    COUNT=$((COUNT+1))
    # echo $COUNT

done < only_range.txt

# echo $arr


