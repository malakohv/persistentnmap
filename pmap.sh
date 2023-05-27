TAR=${TAR:-115.187.37.45}
 6
 7 PORT="7070"
 8
 9 if [[ $Result == *"$PORT/tcp open"* ]]
10 echo "PORT IS OPEN"
11 
12 else
13    while [[ $Result == *"$PORT/tcp filtered"* ]]                
14    do
15      Result=$(nmap -p $PORT $TAR
16    done
17    echo "PORT FILTERED"
18    sleep 10
19 fi
20   
