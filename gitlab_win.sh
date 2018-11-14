https://stackoverflow.com/questions/48057870/install-gitlab-on-widows-with-docker

You need to install Docker for windows.
Share drive for docker (in docker's settings > shared drives). For example drive e: settings
Then you need to create 3 dirs on drive

dirs:
d:\gitlab\config, d:\gitlab\logs, d:\gitlab\data

docker run --detach --hostname gitlab.localhost --publish 20443:443 --publish 2080:80 --publish 2022:22 --name gitlab --restart always --volume d:\gitlab\config:/etc/gitlab --volume d:\gitlab\logs:/var/log/gitlab --volume d:\gitlab\data:/var/opt/gitlab gitlab/gitlab-ce:latest


