# docker-x11-apps
Dockerised versions of apps with painful, messy or broken installs. *THIS ONLY WORKS ON LINUX*

# WHY?
For whatever reason, the Arduino IDE doesn't download plugins on the latest Ubuntu (Java version issues I think), so I Dockerised it
Kicad has always been hit and miss, so I did that too

# How to run
change to the app's directory and ... `bash ./run.sh`. It'll build the Docker image and then run the app.
