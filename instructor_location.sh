ins=$(grep $1 timetable.csv | cut -d',' -f4 | sort | uniq )
echo $ins
# time=$(grep timetable.csv | cut -d',' -f2 | sort | uniq)
today=$(date +%A)
echo "Time: $(date +%H)"
time=$(date +%H)
if grep $1 timetable.csv | grep $today | grep "08:"; then
	echo "Teacher is in class $(grep $1 timetable.csv | cut -d',' -f5 )"
fi

