# Welcome to ze Tribioune

## GET recent message for the "laplagedigitale" room

> curl -H "Accept: application/json" -H "Content-type: application/json" http://localhost:3000/laplagedigitale/messages

` [{"body":"message number 41","created_at":"2012-05-25T22:40:28+02:00","user_name":"yannski","uid":"4fbfee3c312f916d1500002a"},{"body":"message number 42","created_at":"2012-05-25T22:40:28+02:00","user_name":"yannski","uid":"4fbfee3c312f916d1500002b"},{"body":"message number 43","created_at":"2012-05-25T22:40:28+02:00","user_name":"yannski","uid":"4fbfee3c312f916d1500002c"},{"body":"message number 44","created_at":"2012-05-25T22:40:28+02:00","user_name":"yannski","uid":"4fbfee3c312f916d1500002d"},{"body":"message number 45","created_at":"2012-05-25T22:40:28+02:00","user_name":"yannski","uid":"4fbfee3c312f916d1500002e"}] `

## POST a message in the "laplagedigitale" room

> curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"body": "pipo molo"} ' http://localhost:3000/laplagedigitale/messages

` {"body":"pipo molo","created_at":"2012-05-25T23:09:56+02:00","user_name":"curl/7.22.0 (x86_64-pc-linux-gnu) libcurl/7.22.0 OpenSSL/1.0.1 zlib/1.2.3.4 libidn/1.23 librtmp/2.3","uid":"4fbff524312f91673d000007"} `