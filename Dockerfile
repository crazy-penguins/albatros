FROM python:3.7-slim-stretch
RUN apt-get -qq update \
  && apt-get -qq install curl libcurl4-openssl-dev gnupg apt-transport-https ca-certificates \
  && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \  
  && curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list \
  && apt-get -qq update \
  && ACCEPT_EULA=Y apt-get -qq install msodbcsql17 mssql-tools \
  && apt-get install -qq unixodbc-dev

