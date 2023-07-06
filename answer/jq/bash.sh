#!/bin/zsh
cat 22_08_* | jq -R -r 'scan("^{.*}$")' > merge.txt
cat merge.txt | jq 'select(.status_code==500) | select(.host | contains("vla.yp-c.yandex.net")) | select(.api_method|startswith("v2/")) | length / 7' > answer.txt