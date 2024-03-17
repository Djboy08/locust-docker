
FROM locustio/locust:latest
COPY . /mnt/locust
WORKDIR /mnt/locust
EXPOSE 8089:8089
CMD ["-f", "/mnt/locust/locustfile.py", "--worker", "--master-host", "5.161.210.105"]