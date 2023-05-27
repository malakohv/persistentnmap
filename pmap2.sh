TAR=${TAR:-115.187.37.45}
PORT="7070"

if [[ $Result == *"$PORT/tcp open"* ]]; then
  echo "PORT IS OPEN"
else
  while [[ $Result == *"$PORT/tcp filtered"* ]]; do
    Result=$(nmap -p $PORT $TAR)
    sleep 10
  done
  echo "PORT FILTERED"
fi
