#!/bin/bash

# marks extraction 

cd Grades 
tail -n 7 grades.csv > without_heading_grades.txt      # remove the first line heading

cut -d , -f 1 without_heading_grades.txt > only_range.txt      #seperate only the marks range
cut -d , -f 2 without_heading_grades.txt > only_grade.txt      #seprate only the grade 
sed 's/^[[:space:]]*//g' only_grade.txt > only_grade_no_space.txt 



# rm only_grade.txt


export COUNT=1


while read line
    do
    # echo "$line"
    export a=2
    export b=5
    if [ $COUNT -lt $a ];then
        echo "$line" > range_row.txt
        val1=$(cut -d + -f 1 range_row.txt)
        val2=100
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
        val1=0
        val2=$(cut -d '<' -f 2 range_row.txt)
        val2=$((val2-1))
        arr+=($val1)
        arr+=($val2)
    fi
    
    
    COUNT=$((COUNT+1))
    # echo $COUNT

done < only_range.txt

# echo $arr
# echo ${arr[0]} 

# export INDEX=0
# while read line 
#     do
#     echo $line >> all.txt
#     echo ${arr[$INDEX]} >> all.txt
#     INDEX=$((INDEX+1))
#     echo ${arr[$INDEX]} >> all.txt
#     INDEX=$((INDEX+1))
# done < only_grade.txt


# for (( i=0; i<${#arr[@]}; i=i+2))
# do
#     echo ${arr[$i]}
#     echo ${arr[$((i+1))]}
# done


# identify tampering 

cd ..
cd Students/ 

for file in $(ls)
do

    # echo "$file"

    cut -d ',' -f 1 $file  > ../student_subject_only.txt 
    tail -n +2 ../student_subject_only.txt > ../no_heading_subject.txt 
    sed 's/^[[:space:]]*//g' ../no_heading_subject.txt > ../no_heading_subject_no_space.txt 
    
    cut -d ',' -f 2 $file  > ../student_mark_only.txt 
    tail -n +2 ../student_mark_only.txt > ../no_heading_mark.txt 
    sed 's/^[[:space:]]*//g' ../no_heading_mark.txt > ../no_heading_mark_no_space.txt 

    cut -d ',' -f 3 $file > ../student_grade_only.txt 
    tail -n +2 ../student_grade_only.txt > ../no_heading_grade.txt 
    sed 's/^[[:space:]]*//g' ../no_heading_grade.txt > ../no_heading_grade_no_space.txt 

    
    
    
    arr_marks=()
    while read line 
        do
            # echo $line
            arr_marks+=($line)
            
            
    done < ../no_heading_mark_no_space.txt

    export GRADE_STUDENT=1
    export SUBJECT_STUDENT=1
    export INDEX_MARKS=0
    export i=0
    while read line         # reading each subject marks of one student 
    do
        export GRADE_MAIN=1
        
        
        for (( i=0; i<${#arr[@]}; i=i+2 ))
        do
            
            if [ ${arr_marks[$INDEX_MARKS]} -ge ${arr[$i]} ] && [ ${arr_marks[$INDEX_MARKS]} -le ${arr[$((i+1))]} ]
            then
                grade_range=$(head -n $GRADE_MAIN ../Grades/only_grade_no_space.txt | tail -1)
                grade_obtained=$(head -n $GRADE_STUDENT ../no_heading_grade_no_space.txt | tail -1)
                subject_tampered=$(head -n $SUBJECT_STUDENT ../no_heading_subject_no_space.txt | tail -1)
                # echo $grade_range
                # echo $grade_obtained
                if [ ! $grade_range == $grade_obtained ]; then
                    echo $file
                    echo $grade_range
                    echo $grade_obtained
                    echo $subject_tampered
                    # echo $INDEX_MARKS
                    # echo $GRADE_MAIN
                    # echo $GRADE_STUDENT                    
                    echo "tampered"
                fi
                GRADE_STUDENT=$((GRADE_STUDENT+1))
                SUBJECT_STUDENT=$((SUBJECT_STUDENT+1))
                
            fi

            GRADE_MAIN=$((GRADE_MAIN+1))
            
        done

        INDEX_MARKS=$((INDEX_MARKS+1))

    done < ../no_heading_grade_no_space.txt 

    # unset arr_marks
done




# echo ${#arr[@]}
# echo ${arr_marks[4]} 
# export MAIN=2
# grade_range=$(head -n $MAIN ../Grades/only_grade_no_space.txt | tail -1)
# echo $grade_range






