echo "Downloading pretrained model"
gdown 'https://drive.google.com/uc?id=1NA1cx4lCssTAlCt9klNgTzhS8eh0Sc4d'

mkdir checkpoints_mlt
unrar x ./Model60k.rar ./checkpoints_mlt
rm -r Model60k.rar

mkdir data/
cd data/
mkdir res/
mkdir demo/

echo "Downloading vgg model"

wget http://download.tensorflow.org/models/vgg_16_2016_08_28.tar.gz
tar -xvf vgg_16_2016_08_28.tar.gz
rm -r /content/DLSProject/data/vgg_16_2016_08_28.tar.gz

echo "Downloading recognition model"
cd ..
gdown 'https://drive.google.com/uc?id=1a-0qujaO461ViSOl4GT6EgwH5uqc6xgO'
mv ./BestMoran.pth ./checkpoints_mlt/

echo "Downloading minuses checker model"
gdown 'https://drive.google.com/uc?id=1jUOTdKgOnUX87s7F_BYogBi20QBxLMf3'
mv ./minus_checker.pth ./checkpoints_mlt/

cd ./data/
mkdir cropped

echo "All done"