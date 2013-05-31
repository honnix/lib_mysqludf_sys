#!/bin/sh

curl -v --basic  -X POST -H "Content-Type:application/json" -d '{"vhost":"/","name":"amq.default","properties":{"delivery_mode":1,"headers":{}},"routing_key":"solrmq","delivery_mode":"1","headers":{},"props":{},"payload":"something","payload_encoding":"string"}' http://guest:guest@localhost:15672/api/exchanges/%2F/amq.default/publish
