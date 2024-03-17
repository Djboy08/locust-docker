
FROM locustio/locust:latest
COPY . /mnt/locust
WORKDIR /mnt/locust
EXPOSE 5557:5557 8089:8089 5558:5558
CMD ["-f", "/mnt/locust/locustfile.py", "--worker", "--master-host", "dolphin-app-s7jzj.ondigitalocean.app"]