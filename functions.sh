#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
pv_dflow () {
local answer=$(curl -s https://api.dialogflow.com/v1/query?v=20150910 -H 'Content-Type: application/json' -H 'Authorization: Bearer '${dflow_api_key}'' -d '{"lang": "'"${language:0:2}"'","query": "'"$order"'","sessionId": "112784433176887711459"}' | jq -r ".result .fulfillment .speech")
say "$answer"
}

