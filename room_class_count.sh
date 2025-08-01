echo "Room, Day, Count"
rooms=$( cut -d',' -f5 timetable.csv | sort | uniq -c )
days=$( cut -d',' -f1 timetable.csv | sort | uniq -c )
for room in $rooms ;do
	for day in $days;do
		count=$(grep $room timetable.csv | grep -c $day)
		echo " $room $day $count "
	done
done

	                

