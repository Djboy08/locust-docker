# version: "3"

# services:
#   worker:
#     image: locustio/locust
#     volumes:
#       - ./:/mnt/locust
#     command: -f /mnt/locust/locustfile.py --worker --master-host master

# docker run -p 8089:8089 -v $PWD:/mnt/locust locustio/locust -f /mnt/locust/locustfile.py
# Turn the above into dockerfile syntax
FROM locustio/locust:latest
COPY . /mnt/locust
WORKDIR /mnt/locust
EXPOSE 8089:8089
CMD ["-f", "/mnt/locust/locustfile.py"]