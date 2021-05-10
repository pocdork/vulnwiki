#!/bin/sh

#Coded by Sourav Sahana
#https://twitter.com/pocdork
#https://github.com/pocdork
#sahana@pocdork.com

RED='\033[0;31m'
NC='\033[0m' # No Color

org="$1" #Org name
session="$2" #GitHub Session

printf "${RED}Getting repositories from https://github.com/$org/ ...${NC}\n\n" 
auth=$(cat .token)

	for ((n=1;n<=20;n++))
	do
 		p="$n"
 		
 		repo=$(curl -i -H "Authorization: token $auth" "https://api.github.com/users/$org/repos?per_page=100\&page=$p" -silent | grep -o 'git@[^"]*' | grep -o -P '(?<=/).*(?=.git)')
 		check=$(echo $?)
 		echo "$repo" | tee -a "./repo.txt"

 		if [[ "$check">0 ]]; then

 			printf "${RED}No more pages...${NC}\n\n" 
 			break
 		fi
	done

	printf "${RED}Getting vulnerable Wiki pages...${NC}\n\n" 
	while read name
	do
		wiki=$(curl -s -X 'GET' -b 'user_session='$session'' "https://github.com/$org/$name/wiki/_new" | grep "Create New Page" | awk '{print $5}')
		
		if [[ "$wiki" =~ ^("$org/$name")$ ]]; then

 			echo "https://github.com/$org/$name/wiki"
 		fi

	done < "./repo.txt"

	rm ./repo.txt
