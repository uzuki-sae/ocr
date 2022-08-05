input=`ls -ct ~/Documents/ocr/*.pdf|head -n 1`
pdftoppm  $input ~/Documents/ocr/page 

for i in ~/Documents/ocr/*.ppm
do
	tesseract $i $i -l eng+jpn+jpn_vert
done

cat ~/Documents/ocr/*.ppm.txt>>$input.txt
rm ~/Documents/ocr/*.ppm 
rm ~/Documents/ocr/*.ppm.txt
echo transform completed,your file is in $input.txt
