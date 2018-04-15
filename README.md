# Image Magick Utilities

Some useful IM tools for those (like me) who can't remember all the commands.
- imageColorQuantize
- imageDirToAnimatedGif
- imageRemoveBgWhite
- imageRemoveBgWhiteBatch
- imageResize
- imageResizeBatch
- imageToPng

---

### imageColorQuantize
- Takes an image and quantise the number of colors
- *Usage: ./imageColorQuantize FILENAME NUMCOLORS*
- *Example: ./imageColorQuantize colorWheel.png 8*

---

### imageDirToAnimatedGif
- Takes a directory and compiles an animated gif
- *Usage: ./imageDirToAnimatedGif DELAY DIRPATH*
- *Example: ./imageDirToAnimatedGif 20 ~*

---

### imageRemoveBgWhite
- Takes an image and removes white background (with 5% fuzz)
- To reach all edges, this creates a white border, floodfills, and removes border.
- *Usage: ./imageRemoveBgWhite FILENAME*
- *Example: ./imageRemoveBgWhite image.png*

### imageRemoveBgWhiteBatch
- Run **imageRemoveBgWhite** on all images in directory
- *Usage: ./imageRemoveBgWhiteBatch DIRPATH*
- *Example: ./imageRemoveBgWhiteBatch ~*


---

### imageResize
- Downsize an image
- *Usage: 	./imageResize WIDTH HEIGHT FILENAME*
- *Example:		./imageResize 320 480 image.png*

### imageResizeBatch
- Run **imageResize** on all images in directory
- *Usage: 	./imageResizeBatch WIDTH HEIGHT DIRPATH*
- *Example:		./imageResizeBatch 320 480 ~*

---

### imageToPng
- Converts an image to PNG
- This will also clean image metadata (comments, PNG-chunk data, etc)
- *Usage: 	./imageToPng FILENAME*
- *Example:		./imageToPng image.png*
