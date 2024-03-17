
FROM locustio/locust:latest
COPY . /mnt/locust
WORKDIR /mnt/locust
EXPOSE 5557:5557
CMD ["-f", "/mnt/locust/locustfile.py", "--headless", "--worker", "--master-host", "5.161.210.105"]