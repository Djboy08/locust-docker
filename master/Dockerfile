# version: "3"

# services:
#   worker:
#     image: locustio/locust
#     volumes:
#       - ./:/mnt/locust
#     command: -f /mnt/locust/locustfile.py --worker --master-host master

# Turn the above into dockerfile syntax
FROM locustio/locust
COPY . /mnt/locust
EXPOSE 8089:8089
CMD ["-f", "/mnt/locust/locustfile.py", "--worker", "--master-host", "master"]
