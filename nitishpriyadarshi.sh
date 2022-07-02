echo "Enter the value:  "
read A B
for A in $(seq $A $B)
do
    k=0
    for i in $(seq 2 $(expr $A - 1))
    do 
        if [ $(expr $A % $i) -eq 0 ]
        then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo $A
    fi
done
	
