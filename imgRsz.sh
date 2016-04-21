#!/bin/sh
#
# This is a script that uses ImageMagick to resizes images to a specified size.
#
# Accepts: png, jpg, jpeg, gif
# Outputs: png
# Usage: ./imgRsz.sh WIDTH HEIGHT
# 
# Tested Environment
# OSX:			10.11.3
# ImageMagick:	6.8.8-0 Q16 x86_64
# 

# ================================================
# ==========[ Arguments Validity Check ]==========
# ================================================

if [ "$#" -ne 2 ]; then
	echo "Error: Incorrect number of arguments"
	echo "Usage: ./imgRsz.sh WIDTH HEIGHT"
	exit 1
fi

width=$1
height=$2

numRegExp='^[0-9]+$'
if ! [[ $width =~ $numRegExp ]] ; then
   echo "Error: Width is not a valid number" >&2
   exit 1
fi
if ! [[ $height =~ $numRegExp ]] ; then
   echo "Error: Height is not a valid number" >&2
   exit 1
fi

echo "Resolution:" "$width""x""$height"
echo "Begin Conversion"

# ===================================================
# ==========[ Find num conversions needed ]==========
# ===================================================

numConversions=0
for f in *
do
    fileFullName=`echo $f|grep -i ".png\|.jpg\|.jpeg\|.gif"`
	fileName="${fileFullName%.*}"
	fileExt="${fileFullName##*.}"
	
	if [ -n "$fileFullName" ] ; then
    	let "numConversions += 1"
    fi
done

# ==================================
# ==========[ Conversion ]==========
# ==================================

curConversion=0
for f in *
do
    fileFullName=`echo $f|grep -i ".png\|.jpg\|.jpeg\|.gif"`

	fileName="${fileFullName%.*}"
	fileExt="${fileFullName##*.}"

	if [ -n "$fileFullName" ] ; then
		let "curConversion += 1"
		printf "[""$curConversion"" / "" $numConversions""]"" "$fileFullName" ......"

		# 1/3 - Strip(reconvert) non-standard PNG (Left by amazing Photoshop.)
		if [ $fileExt == "png" ] ; then
			convert "$fileFullName" -strip "$fileFullName"
		fi
		
		# 2/3 - The actual conversion
		convert "$fileName"".""$fileExt" -resize "$width""x""$height"\> "$fileName"".png"
		
		# 3/3 - Cleanup - Original PNGs are overwritten. Remove anything not originally PNG format
		if [ $fileExt != "png" ] ; then
			rm $fileFullName
		fi

		echo " Done!"		
    fi
done

printf "All done!\n\n"

