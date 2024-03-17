
FROM locustio/locust:latest
COPY . /mnt/locust
WORKDIR /mnt/locust
EXPOSE 8089:8089 5557:5557 5558:5558
CMD ["-f", "/mnt/locust/locustfile.py", "--worker", "--master-host", "https://dolphin-app-s7jzj.ondigitalocean.app"]