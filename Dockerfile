FROM rocker/verse
ARG USER_ID
ARG GROUP_ID

RUN usermod -u $USER_ID rstudio
#RUN groupmod -g $GROUP_ID rstudio
RUN chown -R rstudio:rstudio /home/rstudio

RUN apt update && apt install -y man-db && rm -rf /var/lib/apt/lists/*
RUN yes|unminimize

RUN apt update && apt-get install -y openssh-server python3-pip
RUN apt update && apt install -y python3 python3-pip
RUN pip3 install jupyter jupyterlab
RUN pip3 install numpy scikit-learn pandas
