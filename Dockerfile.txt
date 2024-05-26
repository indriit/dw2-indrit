# Gebruik een basis image
FROM nginx:alpine

# Kopieer de html directory naar de nginx standaard directory
COPY html /usr/share/nginx/html

# Maak een buildtime.txt bestand aan en voeg het toe aan de nginx directory
RUN date > /usr/share/nginx/html/buildtime.txt

# Expose poort 81
EXPOSE 81

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

