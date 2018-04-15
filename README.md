# Image Magick Utilities

Some useful IM tools for those (like me) who can't remember all the commands.
- imageColorQuantize
- imageDirToAnimatedGif
- imageRemoveBgWhite
- imageResize
- imageResizeBatch
- imageToPng

### imageColorQuantize
- Takes an image and quantise the number of colors
- Usage: ./imageColorQuantize filename NUMCOLORS
- Ex: ./imageColorQuantize colorWheel.png 8

### imageDirToAnimatedGif
- Takes a directory and compiles an animated gif
- Usage: ./imageDirToAnimatedGif DELAY dirPath
- Ex: ./imageDirToAnimatedGif 20 ~

### imageRemoveBgWhite
- Takes an image and removes white background (with 5% fuzz)
- To reach all edges, this creates a white border, floodfills, and removes border.
- Usage: ./imageRemoveBgWhite filename
- Ex: ./imageRemoveBgWhite image.png

### imageResize
- Downsize an image
- Usage: 	./imageResize WIDTH HEIGHT filename
- Ex:		./imageResize 320 480 image.png

### imageResizeBatch
- Downsize all images in directory
- Usage: 	./imageResizeBatch WIDTH HEIGHT dirPath
- Ex:		./imageResizeBatch 320 480 ~

### imageToPng
- Converts an image to PNG
- This will also clean image metadata (comments, PNG-chunk data, etc)
- Usage: 	./imageToPng filename
- Ex:		./imageToPng image.png
