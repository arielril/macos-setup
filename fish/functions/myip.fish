function myip
	set -l reqRes (http ipinfo.io)
	set -l ip (echo $reqRes | jq .ip)
	set -l locLL (echo $reqRes | jq .loc)
	set -l postal (echo $reqRes | jq .postal)
	set -l city (echo $reqRes | jq .city)
	set -l country (echo $reqRes | jq .country)

	printf 'IP:\\t\\t%s\\n' $ip
	printf 'City:\\t\\t%s\\n' $city
	printf 'Country:\\t%s\\n' $country
	printf 'LatLong:\\t%s\\n' $locLL
	printf 'Postal:\\t\\t%s\\n' $postal
end
