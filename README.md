# ImageMagickBatchResize

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

