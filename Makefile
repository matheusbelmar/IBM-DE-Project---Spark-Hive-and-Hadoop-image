url_1=https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/data/dataset1.csv 
dir_1=/opt/data/imports/dataset1.csv

url_2=https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/data/dataset2.csv
dir_2=/opt/data/imports/dataset1.csv

download:
	./bash-scripts/Data_Download.sh url_1 dir_1
	./bash-scripts/Data_Download.sh url_2 dir_2