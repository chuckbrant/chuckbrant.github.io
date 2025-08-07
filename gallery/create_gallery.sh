
rm -rf gallery*
cat template/hometop.html > ../home.html
for photo in `ls photo/*.jpg`; do
        echo "Processing $photo"
basename="$(basename "$photo")"
dir=${basename%.*}
echo $dir
index="${dir//[^0-9]/}"
echo $index
mkdir gallery$index

cat template/index.html | sed s/inserthere/$dir/ > gallery$index/index.html

#make homepage
echo " - image_path: /gallery/photo/$basename" >> ../home.html
echo "   gallery-cloud: /gallery/$dir" >> ../home.html


done
cat template/homebottom.html >> ../home.html
