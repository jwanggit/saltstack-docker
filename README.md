# Goal
A docker cluster to practice salt stack scripting to do the following:


## Load Balancing

Ensure a virtual server called X exists listening at port 443 with pool Y behind.

Ensure servers A, B, C are members in pool Y.

Server A, B, C are running RedHat Linux 7 with httpd webserver service at port 443.

Server C is running with Windows 2012 R2 with IIS webserver service at port 443.

 

## Service Assurance

For each member of the pool:

-          If webserver service is disabled, stop the webserver service and ensure its F5 pool membership is disabled.

-          If webserver service is stopped, start the service and ensure its pool membership is enabled.

-          If webserver service is running, ensure the webserver service is enabled.

# How

* Start the cluster through `start.sh`. It will build the salt master and minion images, create one master container and two minior containers.

* Log in to the master container through `master-login.sh`

* Run the following `salt '*' state.apply pillar='{"bigip":{"password":"admin"}}' test=True`

# Future Improvement

Automated test to verify the salt script works.

