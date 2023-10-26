#!/bin/bash

# marks extraction 

cd Grades 
tail -n 7 grades.csv > without_heading_grades.txt      # remove the first line heading

cut -d , -f 1 without_heading_grades.txt > only_range.txt      #seperate only the marks range
cut -d , -f 2 without_heading_grades.txt > only_grade.txt      #seprate only the grade 


export COUNT=1


while read line
    do
    # echo "$line"
    export a=2
    export b=5
    if [ $COUNT -lt $a ];then
        echo "$line" > range_row.txt
        val1=100
        val2=$(cut -d + -f 1 range_row.txt)
        arr+=($val1)
        arr+=($val2)

    elif [ $COUNT -ge $a ] && [ $COUNT -le $b ];then
        echo "$line" > range_row.txt
        val1=$(cut -d - -f 1 range_row.txt)
        val2=$(cut -d - -f 2 range_row.txt)
        # echo $val1
        # echo $val2
    
        arr+=($val1)
        arr+=($val2)

        
    elif [ $COUNT -eq $((b+1)) ];then
        echo "$line" > range_row.txt
        val1=$(cut -d '<' -f 2 range_row.txt)
        val2=0
        arr+=($val1)
        arr+=($val2)
    fi
    
    
    COUNT=$((COUNT+1))
    # echo $COUNT

done < only_range.txt

# echo $arr
# echo ${arr[0]} 

export INDEX=0
while read line 
    do
    echo $line >> all.txt
    echo ${arr[$INDEX]} >> all.txt
    INDEX=$((INDEX+1))
    echo ${arr[$INDEX]} >> all.txt
    INDEX=$((INDEX+1))
done < only_grade.txt



# identify tampering 

cd ..
cd Students/ 

for file in $(ls)
do

    # echo "$file"

   
    
    cut -d ',' -f 2 $file  > ../student_mark_only.txt 
    tail -n +2 ../student_mark_only.txt > ../no_heading_mark.txt
    cut -d ',' -f 3 $file > ../student_grade_only.txt 
    tail -n +2 ../student_grade_only.txt > ../no_heading_grade.txt 
    
    
    
    arr_marks=()
    while read line 
        do
            # echo $line
            arr_marks+=($line)
    done < ../no_heading_mark.txt


    export INDEX=0
    while read line
        do
            # echo $line
            if [  ]; then       #identify marks range
                if [ ];then     # grade correct 

                else            # grade incorrect

                fi
            elif [ ]; then
                if [ ];then     # grade correct 

                else            # grade incorrect

                fi

            elif [  ]; then
                if [ ];then     # grade correct 

                else            # grade incorrect

                fi
            else 

            fi

    done < ../no_heading_grade.txt

    
done

# echo ${arr_marks[4]} 




