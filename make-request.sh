#!/bin/bash

echo "#$1 Sent" && curl  -v "localhost:3000?status=200&sleep=$2" && echo "Done $1"
