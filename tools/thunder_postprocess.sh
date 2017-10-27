#!/bin/tcsh -f

# wrote by Xueming Li @ Tsinghua University

#Input: 1InputMapA.mrc 2InputMapB.mrc 3PixelSize(A) 4MaskThreshold 5MaskExtensionWidth 6MaskEdgeWidth

if($# < 6) then 
	echo "    Map sharpening for THUNDER"
    echo "    Input: InputMapA.mrc InputMapB.mrc PixelSize(A) MaskThreshold MaskExtensionWidth MaskEdgeWidth"
    exit
endif


set mapA = $1
set mapB = $2
set mask = "ThunderPostprocessingMask.mrc"
set psize = $3
set threshold =  $4
set extwidth =  $5
set softwidth = $6


# make mask
echo "Generating mask ..."
thunder_genmask $mask $mapA $threshold $extwidth $softwidth $psize
cat thunder_postprocess.log
echo "====INPUT SETTINGS===="  >> thunder_postprocess.log
echo "InputMapA.mrc : $mapA"  >> thunder_postprocess.log
echo "InputMapB.mrc : $mapB"  >> thunder_postprocess.log
echo "PixelSize = $psize" >> thunder_postprocess.log
echo "MaskThreshold = $threshold" >> thunder_postprocess.log
echo "MaskExtensionWidth = $extwidth" >> thunder_postprocess.log
echo "MaskEdgeWidth = $softwidth" >> thunder_postprocess.log
echo "GeneratedMask : $mask" >> thunder_postprocess.log
echo "======================" >> thunder_postprocess.log

echo "Post processing"
thunder_postprocess $mapA $mapB $mask $psize

cat thunder_postprocess.log

echo "Done"
