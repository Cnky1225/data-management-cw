#!/bin/bash
curl https://www.kitco.com/charts/livegold.html > goldprice.txt
goldbid=$(cat goldprice.txt | grep -E '<span id="sp-bid">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
goldask=$(cat goldprice.txt | grep -E '<span id="sp-ask">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
goldhigh=$(cat goldprice.txt | grep -oP '<span id="sp-hi">High: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
goldlow=$(cat goldprice.txt | grep -oP '<span id="sp-lo">Low: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
curl https://www.kitco.com/charts/livepalladium.html > palladiumprice.txt
palladiumbid=$(cat palladiumprice.txt | grep -E '<span id="sp-bid">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
palladiumask=$(cat palladiumprice.txt | grep -E '<span id="sp-ask">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
palladiumhigh=$(cat palladiumprice.txt | grep -oP '<span id="sp-hi">High: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
palladiumlow=$(cat palladiumprice.txt | grep -oP '<span id="sp-lo">Low: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
curl https://www.kitco.com/charts/livesilver.html > silverprice.txt
silverbid=$(cat silverprice.txt | grep -E '<span id="sp-bid">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
silverask=$(cat silverprice.txt | grep -E '<span id="sp-ask">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
silverhigh=$(cat silverprice.txt | grep -oP '<span id="sp-hi">High: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
silverlow=$(cat silverprice.txt | grep -oP '<span id="sp-lo">Low: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
curl https://www.kitco.com/charts/liveplatinum.html > platinumprice.txt
platinumbid=$(cat platinumprice.txt | grep -E '<span id="sp-bid">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
platinumask=$(cat platinumprice.txt | grep -E '<span id="sp-ask">[0-9,.]+</span>' | sed 's/[^0-9.]//g')
platinumhigh=$(cat platinumprice.txt | grep -oP '<span id="sp-hi">High: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
platinumlow=$(cat platinumprice.txt | grep -oP '<span id="sp-lo">Low: [0-9,.]+</span>' | sed 's/[^0-9.]//g')
datetime=date +"%FT%T"
echo -e "$goldbid,$goldask,$goldhigh,$goldlow,$datetime" >> goldresults.txt
echo -e "$palladiumbid,$palladiumask,$palladiumhigh,$palladiumlow,$datetime" >> palladiumresults.txt
echo -e "$silverbid,$silverask,$silverhigh,$silverlow,$datetime" >> silverresults.txt
echo -e "$platinumbid,$platinumask,$platinumhigh,$platinumlow,$datetime" >>platinumresults.txt
$(/opt/lampp/bin/mysql -u root -e "CREATE DATABASE IF NOT EXISTS kitco; USE kitco")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; CREATE TABLE IF NOT EXISTS gold_price (id INT PRIMARY KEY AUTO_INCREMENT, bid float, ask float, high float, low float, datetime TIMESTAMP);")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; INSERT INTO gold_price VALUES (null, $goldbid, $goldask, $goldhigh, $goldlow, '$datetime');")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; CREATE TABLE IF NOT EXISTS palladium_price (id INT PRIMARY KEY AUTO_INCREMENT, bid float, ask float, high float, low float, datetime TIMESTAMP);")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; INSERT INTO palladium_price VALUES (null, $palladiumbid, $palladiumask, $palladiumhigh, $palladiumlow, '$datetime');")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; CREATE TABLE IF NOT EXISTS silver_price (id INT PRIMARY KEY AUTO_INCREMENT, bid float, ask float, high float, low float, datetime TIMESTAMP);")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; INSERT INTO silver_price VALUES (null, $silverbid, $silverask, $silverhigh, $silverlow, '$datetime');")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; CREATE TABLE IF NOT EXISTS platinum_price (id INT PRIMARY KEY AUTO_INCREMENT, bid float, ask float, high float, low float, datetime TIMESTAMP);")
$(/opt/lampp/bin/mysql -u root -e "USE kitco; INSERT INTO platinum_price VALUES (null, $platinumbid, $platinumask, $platinumhigh, $platinumlow, '$datetime');")

