# Refreshable System Statistics Monitor for status bar integration

while true; do
    # 1. Get CPU Usage
    CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    
    # 2. Get RAM Usage
    RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
    RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
    RAM_PCT=$(awk "BEGIN {print ($RAM_USED/$RAM_TOTAL)*100}")

    # 3. Get Battery Info safely
    if [ -d /sys/class/power_supply/BAT0 ]; then
        BAT=$(cat /sys/class/power_supply/BAT0/capacity)
        BAT_STATUS=$(cat /sys/class/power_supply/BAT0/status)
        BAT_STR=" $BAT% ($BAT_STATUS)"
    else
        BAT_STR=" AC Power"
    fi

    # Format output with clean symbols
    OUTPUT="CPU: ${CPU}% | RAM: ${RAM_USED}/${RAM_TOTAL}MB (${RAM_PCT:.1f}%) | $BAT_STR"
    
    echo "$OUTPUT"
    sleep 2
done
