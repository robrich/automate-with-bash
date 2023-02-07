#!/bin/bash

# Count of all the files in the directory

ls -lR | grep -v "^total" | grep -v "^./" | grep -v -e "^$" | wc -l
