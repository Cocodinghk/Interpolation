# Interpolation

## Environment

- Matlab R2020a

## Image name format

In folder '/src/data', the format of .jpg data are as below:

- fig**x**: original image of number x

- fig**x**_lost\_**y**: image to be repaired of number x.

  y=1: scribbles. y=2: words covering.

  y=31: 50% pixels missing. y=32: 70% pixels missing. y=33: 90% pixels missing.

- fig**x**\_res**y**\_**z**: interpolated results of number x using method z.

  y=11: repair srcibbles. y=12: repair words covering.

  y=31: repair 50% pixels missing. y=32: repair 70% pixels missing. y=33: repair 90% pixels missing.

## How to run

- **Image hole filling or damage fixing:** Modify the pictures in folder '/src/data' and edit the loaction in **task11.m** correctly, then run **task11.m**.

- **Calculate the metrics of image hole filling or damage fixing:** Modify the pictures in folder '/src/data' and edit the loaction in **task12.m** correctly, then run **task12.m**.

- **Image inpainting on pixel missing:**  Edit the loaction in **task21.m** correctly, then run **task21.m**.

- **Drawing the line chart of the pixel missing proportion:** Edit the loaction in **task22.m** correctly, then run **task22.m**.
