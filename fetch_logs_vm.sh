date=$(date '+%Y-%m-%d_%H:%M:%S')

HILBERT_IP=172.0.0.3
KLEENE_IP=172.0.0.2
POST_IP=172.0.0.4

# Fetch logs from Hilbert
scp blue@$HILBERT_IP:/var/log/telegraf/telegraf.json ~/projects/got/experiments/$1/logs/hilbert/$date.json

scp blue@$HILBERT_IP:/home/blue/blue_logs/* ~/projects/got/experiments/$1/logs/hilbert

# Fetch logs from Kleene
scp blue@$KLEENE_IP:/var/log/telegraf/telegraf.json ~/projects/got/experiments/$1/logs/kleene/$date.json

scp blue@$KLEENE_IP:/home/blue/got_logs/* ~/projects/got/experiments/$1/logs/kleene

# Fetch logs from Post
scp red@$POST_IP:/var/log/telegraf/telegraf.json ~/projects/got/experiments/$1/logs/post/$date.json

scp red@$POST_IP:/home/red/got_logs/* ~/projects/got/experiments/$1/logs/post
