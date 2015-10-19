# Ping BBC.co.uk every minute and store a record.
while (1)
  d=$(date)
  result=$(ping -o bbc.co.uk)
  if [[ $(echo $?) ]]; then 
    echo -e '\n\n'$d'\n' >> ping_bbc
    echo $result >> ping_bbc
  fi
  sleep 60