# version: "3"



# docker run -p 8089:8089 -v $PWD:/mnt/locust locustio/locust -f /mnt/locust/locustfile.py
# Turn the above into dockerfile syntax
FROM locustio/locust:latest
COPY . /mnt/locust
WORKDIR /mnt/locust
EXPOSE 8089:8089 5557:5557
CMD ["-f", "/mnt/locust/locustfile.py", "--master", "-H", "http://5.161.210.105:8089"]