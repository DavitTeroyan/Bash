password="pass2026"
count=0

while [ $count -lt 3 ]
do
    read -s -p "Enter password: " input
    echo

    if [ "$input" = "$password" ]
    then
        echo "Access Granted!"
        exit 0
    fi

    count=$((count + 1))
done

echo "Account Locked!"
exit 1
