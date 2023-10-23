function add(){
    echo "$1"
    echo "$2"
    res=$(($1+$2))
    return $res
}

add 10 20

a=$?
echo "outside"
echo "$a"