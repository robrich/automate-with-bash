#!/bin/bash

# submit the report every day

key1="foo"
key2="bar"
curl -X POST -H "Content-Type: application/json" -d '{"key1":"$key1", "key2":"$key2"}' http://localhost:3000/data
