for i in $*
do
	if [ ${i} = "trash" ]; then
		rm -rf ~/.local/share/Trash/files/*
		rm -rf ~/.local/share/Trash/files/.*
	else
		date=`date +%Y_%m_%d_%H:%M:%S`
		name="${i}_${date}"
		#echo $name
		mv $i ~/.local/share/Trash/files/$name 
	fi
done
