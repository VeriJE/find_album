#!/bin/bash

read -p "Search for artist, band, or album: " query

query_dashed=$(echo "$query" | tr ' ' '-')

echo -e "Chops & Rock - https://docs.google.com/spreadsheets/d/1CB4AvqRL90m9UL0dXPw35Dia1br0_0v1ZFcPohq51CI/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1CB4AvqRL90m9UL0dXPw35Dia1br0_0v1ZFcPohq51CI/export?format=csv&gid=0" | grep -i "$query"
echo -e "\n"

echo -e "Insomnio - https://docs.google.com/spreadsheets/d/1FS_xBceVVUJxUxmBKtEIr_kcojcQP2L6/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1FS_xBceVVUJxUxmBKtEIr_kcojcQP2L6/export?format=csv&gid=448469524" | grep -i "$query"
echo -e "\n"

echo -e "Discos De Oro\n"
curl -L -s "https://discosdeoro.com/product-sitemap1.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "BB Discos - https://docs.google.com/spreadsheets/d/1X7Gbr2ludlxOFUSkCdvQcdcOHtSc6UTkWp5ZX6Gag9s/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1X7Gbr2ludlxOFUSkCdvQcdcOHtSc6UTkWp5ZX6Gag9s/export?format=csv&gid=0" | grep -i "$query"
echo -e "\n"

echo -e "Art discos - https://docs.google.com/spreadsheets/d/16YoPqmot3UWhJe33SDSjUJZJ2CMW9b_CcyjEh2QJFCE/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/16YoPqmot3UWhJe33SDSjUJZJ2CMW9b_CcyjEh2QJFCE/export?format=csv&gid=0" | grep -i "$query"
echo -e "\n"

echo -e "Du Monde Record - https://docs.google.com/spreadsheets/d/16lbYqoiyAEDmG691KkOYJOt2vlHjDMAxXATD9AY0bR0/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/16lbYqoiyAEDmG691KkOYJOt2vlHjDMAxXATD9AY0bR0/export?format=csv&gid=587324085" | grep -i "$query"
echo -e "\n"

echo -e "Anoise - https://docs.google.com/spreadsheets/d/1t0xsEU2PeitI6ztlb_pl1CcBPCnbB3y-i1fmuPf50iM/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1t0xsEU2PeitI6ztlb_pl1CcBPCnbB3y-i1fmuPf50iM/export?format=csv&gid=0" | grep -i "$query"
echo -e "\n"

echo -e "Cementerio Club\n"
curl -L -s "https://acdn-us.mitiendanube.com/stores/001/553/025/themes/common/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

#probar despues estaba en mantenimiento
echo -e "Moulin Records\n"
curl -L -s "https://www.moulinrecords.com/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "BS Collector - https://docs.google.com/spreadsheets/d/1Qb3eWwxv_Dzm0zxotlBG-6BCy0c8KDes/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1Qb3eWwxv_Dzm0zxotlBG-6BCy0c8KDes/export?format=csv&gid=1047541691" | grep -i "$query"
echo -e "\n"

echo -e "RockAndRollRadio\n"
curl -L -s "https://acdn-us.mitiendanube.com/stores/001/344/775/themes/common/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "Klatus - https://docs.google.com/spreadsheets/d/1tjNFUzzw5sI9pHN1BGFDHHxiu0g7TZtUo2Ly2qfZytM/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1tjNFUzzw5sI9pHN1BGFDHHxiu0g7TZtUo2Ly2qfZytM/export?format=csv&gid=0" | grep -i "$query"
echo -e "\n"

echo -e "Exiles records\n"
curl -L -s "https://acdn-us.mitiendanube.com/stores/001/168/674/themes/common/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "Joyce Vynil\n"
curl -L -s "https://www.joycevinylstore.com/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "Doble-d records - https://docs.google.com/spreadsheets/d/1E_OeAlAyE9CTtYc2beC9DJc67j1EOPy5/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1E_OeAlAyE9CTtYc2beC9DJc67j1EOPy5/export?format=csv&gid=1729874604" | grep -i "$query"
echo -e "\n"

echo -e "Salve vinilos\n"
curl -L -s "https://dcdn-us.mitiendanube.com/stores/003/727/214/themes/common/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "Disco de Vinilos Cordoba - https://docs.google.com/spreadsheets/d/1OsjKBV8-2NYX41HwAnSk0_inDaFyGO0v3pT5ECJ5Ptc/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1OsjKBV8-2NYX41HwAnSk0_inDaFyGO0v3pT5ECJ5Ptc/export?format=csv&gid=0" | grep -i "$query"
curl -L -s "https://docs.google.com/spreadsheets/d/1OsjKBV8-2NYX41HwAnSk0_inDaFyGO0v3pT5ECJ5Ptc/export?format=csv&gid=776996895" | grep -i "$query"
curl -L -s "https://docs.google.com/spreadsheets/d/1OsjKBV8-2NYX41HwAnSk0_inDaFyGO0v3pT5ECJ5Ptc/export?format=csv&gid=1207024353" | grep -i "$query"
curl -L -s "https://docs.google.com/spreadsheets/d/1OsjKBV8-2NYX41HwAnSk0_inDaFyGO0v3pT5ECJ5Ptc/export?format=csv&gid=172848196" | grep -i "$query"
echo -e "\n"

echo -e "Studio 15 - https://docs.google.com/spreadsheets/d/172RRyK6ihuaaKiDm_9cM1H6MKViQPABQ/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/172RRyK6ihuaaKiDm_9cM1H6MKViQPABQ/export?format=csv&gid=1815642444" | grep -i "$query"
curl -L -s "https://docs.google.com/spreadsheets/d/172RRyK6ihuaaKiDm_9cM1H6MKViQPABQ/export?format=csv&gid=1362123079" | grep -i "$query"
echo -e "\n"

echo -e "Exit Music Records\n"
curl -L -s "https://acdn-us.mitiendanube.com/stores/001/408/539/themes/common/sitemap.xml" | grep -i "$query_dashed" | grep -oP '(?<=<loc>).*?(?=</loc>)'
echo -e "\n"

echo -e "La Caseteria - https://docs.google.com/spreadsheets/d/1V8T1-MIIaQkYlnelkJfXLTPXjYm5cMaW-u_Q38G2EVI/\n"
curl -L -s "https://docs.google.com/spreadsheets/d/1V8T1-MIIaQkYlnelkJfXLTPXjYm5cMaW-u_Q38G2EVI/export?format=csv&gid=904074892" | grep -i "$query"
echo -e "\n"

echo -e "Search completed"
