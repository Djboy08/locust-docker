import time
from locust import HttpUser, task, constant

class QuickstartUser(HttpUser):
    wait_time = constant(1)

    @task
    def run_get(self):
        # self.client.get("https://items-existing-server-dp8gv.ondigitalocean.app/")
        # generate a json with keys from name1 to name 5 and values equal 5
        json = {}
        for i in range(1, 200):
            json[f"name{i}"] = 1
        self.client.post("https://items-existing-server-dp8gv.ondigitalocean.app/", json=json)