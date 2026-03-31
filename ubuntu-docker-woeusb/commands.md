For building the image and uploading it:

docker buildx build \
 --platform linux/amd64 \
 -t TU_USUARIO_DOCKERHUB/woeusb:latest \
 --push .

Command to pull the image:

docker run \
 --name woeusb \
 --privileged \
 --mount type=bind,src=/dev,dst=/host-dev \
 --mount type=bind,src="${ISO_DIR}",dst=/isos \
  -e USB_DEVICE="${USB_DEVICE}" \
 ramonavocado/woeusb:latest

Command to exec the command inside the docker:

docker run woeusb --device /isos/"${OPERATING_SYSTEM}".iso /host-dev/sdX --target-filesystem NTFS
