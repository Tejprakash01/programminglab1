
days=$(cut -d',' -f1,2 timetable.csv | sort | uniq )

for room in $days; do
	if ! grep $room timetable.csv | grep -q $1 ; then
		echo $room
	fi
done

