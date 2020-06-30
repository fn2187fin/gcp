#!/bin/bash

if [ $# -lt 1 ];then
    word=$(echo "$(cat)" | cut -b 1-40 | nkf -WwMQ |tr = %)
else
    word=$(echo $* | cut -b 1-40 | nkf -WwMQ |tr = %)
fi

lang4=en
lang2=ja


req=$(echo 'https://script.google.com/macros/s/AKfycbwTMyNXe0JroZEy0UA6DHx34-FeH-s48oqYRbNxofxGh8amqkp-/exec?')
req=$(echo ${req}text=${word}?source=${lang4}?target=${lang2})
#echo $req

res=$(curl --silent -L https://script.google.com/macros/s/AKfycbwTMyNXe0JroZEy0UA6DHx34-FeH-s48oqYRbNxofxGh8amqkp-/exec?text=${word}\&source=en\&target=ja)

echo $res
