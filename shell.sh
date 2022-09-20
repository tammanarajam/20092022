# single comment
<<sud
multi
comment
sud
echo " user is : $USER "
read -p "enter sentense:   " sen
echo " you have enterd sentense : ${sen} "
echo " total letters are : ${#sen} "
#echo " after 4th sentense : ${sen:4:10} "
read -p " enter tools: " tools
#echo "2nd tool is : ${tools[1]}"
case $1 in
	add)
		echo " sum is : `expr $2 + $3`"
		;;
	sub)
                echo " sum is : `expr $2 - $3`"
		;;
	mul)
                echo " sum is : `expr $2 / $3`"
		;;
esac
read -p " enter starting number of series " m 
read -p " enter ending number of series " n
<<comment
if [ $m > $n ]
then
	echo " enter large number first"
else
	echo " you have enterd numbers $n and $m "
	
	for (( i=10; i <= $n; i++ ))
	do
		echo $i
	done
fi
comment
echo " you have enterd numbers $n and $m "







