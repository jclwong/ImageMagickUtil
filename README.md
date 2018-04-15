# Image Magick Utilities

Some useful IM tools for those like me who can't remember all the commands.
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


Bash script to batch resize (downsize only) images to specified size.
- Aspect-ratio is maintained.
- Images smaller than the specified size in both Width and Height, will be unaltered

Accepts:
- png
- jpg, jpeg
- gif

Outputs:
- png

Single File:
- Usage: 	./imageResize.sh WIDTH HEIGHT filename
- Ex:		./imageResize.sh 320 480 iPhone.png

Batch (all files in directory)
- Usage: 	./imageResizeBatch.sh WIDTH HEIGHT directoryPath
- Ex:		./imageResizeBatch.sh 320 480 ~

Latest Tested Environment
- OSX:			10.12.3
- ImageMagick:	7.0.5-4 Q16 x86_64
