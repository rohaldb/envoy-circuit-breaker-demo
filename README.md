1. run `docker-compose up` to start the service
2. run `./parallel-requests.sh` to send two asynchronous curl requests, and observe the response codes (note the verbose flag is enabled so the output may be interwoven)
3. tear down the docker image and repeat, observing inconsistent results
