# SSE seeker commands to end observing

# sonata-stop-obs.tcl

stop

# allow settle down time
sh sleep 10

# release ant array resources
freeants

sh sleep 2

# send out "finished with array" email
sh echo "SonATA done with the array " | mailx -s 'SonATA finished with array' -r jjordan@seti.org ata-staff@seti.org

exec setAlarm ARM,sonata,"Done"

# disconnect from telescope array
tscope cleanup

sh sleep 120

