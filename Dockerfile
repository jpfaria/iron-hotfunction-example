# Choose base image
FROM iron/go
# Set the working directory
WORKDIR /function
# Add your binary or code to the working directory
ADD iron-hotfunction-example /function/
# Set what will run when a container is started for this image
ENTRYPOINT ["./iron-hotfunction-example"]