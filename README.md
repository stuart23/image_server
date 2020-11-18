Simple Image Server
===================

A very simple NGINX image server based off the stack overflow question here:
https://stackoverflow.com/questions/39575873/is-there-a-way-to-create-a-simple-static-image-gallery-in-nginx-without-any-thir

This service allows a user to browse the contents of directories as galleries
with image thumbnails. Each thumbnail also links to the image directly to show
it fullsize.

![Screenshot](/screenshot.PNG?raw=true "Screenshot")


Instructions
------------

To run this service, simply build and launch the container with a port binding to 8000 and mount the directory you wish to share /var/www:

    docker build -t image_server .
    docker run -p 8000:8000 -v /local/path/to/gallery:/var/www image_server


The service will now be avalible to browse at http://localhost:8000/
