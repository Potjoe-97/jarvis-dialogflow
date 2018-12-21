#!/bin/bash

pv_dflow () {
export GOOGLE_APPLICATION_CREDENTIALS=$(ls /home/pi/jarvis/plugins_installed/jarvis-dialogflow/*.json)
local api="https://dialogflow.googleapis.com/v2/projects/$dflow_project_id/agent/sessions/15987058248521819724:detectIntent"
local answer=$(
curl -s -X POST $api \
-H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
-H "Content-Type: application/json; charset=utf-8" \
--data '{
    "queryInput": {
		"text": {
			"text": "'"$order"'", 
			"languageCode": "${language:0:2}"
		}
	}
}' | jq -r ".queryResult .fulfillmentText")
if [ "$answer" != "null" ]; then
   say "$answer"
else
   say "$phrase_misunderstood: $order"
fi
}