input=`ls -ct ~/Downloads/ocr/*.pdf|head -n 1`
pdftoppm  $input ~/Downloads/ocr/page 

for i in ~/Downloads/ocr/*.ppm
do
	tesseract $i $i -l jpn
done

cat ~/Downloads/ocr/*.ppm.txt>>$input.txt
rm ~/DDownloads/ocr/*.ppm 
rm ~/Downloads/ocr/*.ppm.txt
echo transform completed,your file is in $input.txt
