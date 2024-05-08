#!/bin/bash
set -o allexport; source .env; set +o allexport;

[ -d downloads ] || mkdir downloads;

curl -d "text=Starting MNCIS import…"\
     -d "channel=$SLACK_CHANNEL"\
     -H "Authorization: Bearer $SLACK_TOKEN"\
     -X POST https://slack.com/api/chat.postMessage

curl -k "sftp://xfer.courts.state.mn.us/CivilJudgment/IR_Judgments.txt"\
    --user "$MNCIS_USER:$MNCIS_PASS"\
    -o "./downloads/IR_Judgments.txt";

if [ $? -ne 0 ]; then
    curl -d "text=There was an error downloading the IR_Judgments.txt file."\
     -d "channel=$SLACK_CHANNEL"\
     -H "Authorization: Bearer $SLACK_TOKEN"\
     -X POST https://slack.com/api/chat.postMessage
fi

curl -k "sftp://xfer.courts.state.mn.us/CrimWithTraffCases/IR_Base_Criminal_Traffic.txt"\
    --user "$MNCIS_USER:$MNCIS_PASS"\
    -o "./downloads/IR_Base_Criminal_Traffic.txt";

if [ $? -ne 0 ]; then
    curl -d "text=There was an error downloading the IR_Base_Criminal_Traffic.txt file."\
     -d "channel=$SLACK_CHANNEL"\
     -H "Authorization: Bearer $SLACK_TOKEN"\
     -X POST https://slack.com/api/chat.postMessage
fi

curl -k "sftp://xfer.courts.state.mn.us/EvictionFilings/IR_EvictionsFiled.txt"\
    --user "$MNCIS_USER:$MNCIS_PASS"\
    -o "./downloads/IR_EvictionsFiled.txt";

if [ $? -ne 0 ]; then
    curl -d "text=There was an error downloading the IR_EvictionsFiled.txt file."\
     -d "channel=$SLACK_CHANNEL"\
     -H "Authorization: Bearer $SLACK_TOKEN"\
     -X POST https://slack.com/api/chat.postMessage
fi

curl -k "sftp://xfer.courts.state.mn.us/Evictions-UnlawfulDetainer/IR_Evictions.txt"\
    --user "$MNCIS_USER:$MNCIS_PASS"\
    -o "./downloads/IR_Evictions.txt";

if [ $? -ne 0 ]; then
    curl -d "text=There was an error downloading the IR_Evictions.txt file."\
     -d "channel=$SLACK_CHANNEL"\
     -H "Authorization: Bearer $SLACK_TOKEN"\
     -X POST https://slack.com/api/chat.postMessage
fi

result=$( mysql -h "news-data-testing.stribapps.com" crime -A < mncis_import_WEEKLY.sql 2>&1 | jq -asR)
trimmed=${result:1:-1}

curl -H "Content-type: application/json; charset=utf-8"\
     --data '{"channel":"'"$SLACK_CHANNEL"'","blocks":[{"type":"section","text":{"type":"mrkdwn","text":"MySQL Result:\n```'"$trimmed"'```"}}]}'\
     -H "Authorization: Bearer $SLACK_TOKEN"\
     -X POST https://slack.com/api/chat.postMessage