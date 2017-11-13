
sudo apt-get update
sudo apt-get -y install build-essential curl git sudo man vim autoconf libtool squashfs-tools

#get newest version
git clone https://github.com/singularityware/singularity.git
cd singularity
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install
sudo apt-get install debootstrap

echo "bind path = /run" >> /usr/local/etc/singularity/singularity.conf



##get specific version
#VERSION=2.3.2
#wget https://github.com/singularityware/singularity/releases/download/$VERSION/singularity-$VERSION.tar.gz
#tar xvf singularity-$VERSION.tar.gz
#cd singularity-$VERSION
#./configure --prefix=/usr/local
#make
#sudo make install


