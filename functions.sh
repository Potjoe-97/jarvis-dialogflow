#!/bin/bash

pv_dflow () {
local answer=$(curl -s https://api.dialogflow.com/v1/query?v=20150910 -H 'Content-Type: application/json' -H 'Authorization: Bearer '${dflow_api_key}'' -d '{"lang": "'"${language:0:2}"'","query": "'"$order"'","sessionId": "112784433176887711459"}' | jq -r ".result .fulfillment .speech")
if [ -n "${answer}" ]; then
    say "$answer"
elif [ -z "${answer}" ]; then
    return 0
fi
}

