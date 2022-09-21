THRESHOLD=85
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  echo $output
    usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
      partition=$(echo $output | awk '{ print $2 }' )
        if [ $usep -ge $THRESHOLD ]; then
	    echo "Running out of memory space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
	         mail -s "Alert: Almost out of disk space $usep%" rajam@gmail.com
		   fi
		   done
#
#
## declare mail variables
##email subject 
subject="Server Memory Status Alert"
##sending mail as
from="devopsr@gmail.com"
## sending mail to
to="com"
## send carbon copy to
also_to="dlr@gmail.com"

## get total free memory size in megabytes(MB) 
free=$(free -mt | grep Total | awk '{print $4}')

## check if free memory is less or equals to  100MB
if [[ "$free" -le 100  ]]; then
        ## get top processes consuming system memory and save to temporary file 
	        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >/tmp/top_proccesses_consuming_memory.txt

		        file=/tmp/top_proccesses_consuming_memory.txt
			        ## send email if system memory is running low
				        echo -e "Warning, server memory is running low!\n\nFree memory: $free MB" | mailx -a "$file" -s "$subject" -r "$from" -c "$to" "$also_to"
					fi

					exit 0
####
echo "Enter your GitHub Personal Access Token:"
read token
#echo $token >token.txt
#cat token.txt
cat ~/.ssh/id_rsa.pub
#if condition to validate weather ssh keys are already present or not
if [ $? -eq 0 ]
then
	echo "SSH Keys are already present..."
	else	
	echo "SSH Keys are are not present..., Create the sshkyes using ssh-keygen command"
	ssh-keygen -t rsa
	echo "SSH Keys successfully generated"
	fi

	sshkey=`cat ~/.ssh/id_rsa.pub`

	if [ $? -eq 0 ]
	then
	echo "Copying the key to GitHub account"
	curl -X POST -H "Content-type: application/json" -d "{\"title\": \"SSHKEY\",\"key\": \"$sshkey\"}" "https://api.github.com/user/keys?access_token=$token"
	if [ $? -eq 0 ]
	then 
	echo "Successfully copied the token to GitHub"
	exit 0
	else
	echo "Failed"
	exit 1
	fi
	else
	echo "Failure in generating the key"
	exit 1
	fi




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
read -p " enter your name" name
read -p " enter your sur name" sur
echo " your complete name is : $sur $name "







