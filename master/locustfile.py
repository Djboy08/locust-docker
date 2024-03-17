import time
from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 5)

    @task
    def run_get(self):
        self.client.get("https://items-existing-server-dp8gv.ondigitalocean.app/")