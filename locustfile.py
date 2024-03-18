import time
from locust import HttpUser, task, constant

class QuickstartUser(HttpUser):
    wait_time = constant(1)

    @task
    def run_get(self):
        # self.client.get("https://items-existing-server-dp8gv.ondigitalocean.app/")
        self.client.post("https://items-existing-server-dp8gv.ondigitalocean.app/", json={"item_name":"i_am_a_test2", "amount": 1})