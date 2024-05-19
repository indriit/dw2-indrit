@echo off
REM Navigeer naar de directory van het project
cd /d C:\HoGent\dw2-git\dw2-indrit

REM Build de Docker image
docker build -t demo-site .

REM Stop en verwijder een bestaande container als die bestaat
docker stop demo-site-container
docker rm demo-site-container

REM Start een nieuwe container op poort 81
docker run -d -p 81:81 --name demo-site-container demo-site
