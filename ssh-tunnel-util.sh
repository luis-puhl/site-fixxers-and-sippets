ssh remote -L 8080:127.0.0.1:8888 -R 9090:127.0.0.1:9090 -X
# do work
# like compress and send files without storing localy
tar c . | pigz --best | pv -b | nc -v -w 2 127.0.0.1 9090 # remote
nc -lvnp 9090 127.0.0.1 | pv -b | pigz -d | tar -x # local
#
history | pigz --best | nc -l 8888 # remote
nc -w 2 127.0.0.1 8080 | pv -b | pigz -d > history.remote # local
