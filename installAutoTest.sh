#!/bin/bash
git config --global credential.helper store
mkdir -p $HOME/testhome/
cd $HOME/testhome/
git clone http://github.opg.cn/opg-li-taojun/unittestExBaseb.git
git clone http://github.opg.cn/opg-li-taojun/steamOmTest.git
echo "export PYTHONPATH=$HOME/testhome/unittestExBaseb:$HOME/testhome/steamOmTest" >> $HOME/.bashrc
source $HOME/.bashrc
#cd steamOmTest
#python steam/mediares/query/mediaresQueryTest.py aafff
wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.zip
unzip apache-tomcat-7.0.88.zip -d $HOME/testhome/
cd $HOME/testhome/apache-tomcat-7.0.88/bin
chmod +x $HOME/testhome/apache-tomcat-7.0.88/bin/*.sh
echo "export TOMCAT_HOME=$HOME/testhome/apache-tomcat-7.0.88" >> $HOME/.bashrc
echo 'PATH=$PATH:$TOMCAT_HOME/bin' >> $HOME/.bashrc
cd $HOME/testhome/apache-tomcat-7.0.88/webapps/
git clone https://github.com/litaojun/testplandisplay.git
locIp=`curl --retry 3 --connect-timeout 3 -s 169.254.169.254/latest/meta-data/local-ipv4`
sed -i "s/127.0.0.1/$locIp/g" testplandisplay/pytest.html
cp testplandisplay/run.sh $HOME/testhome/
chmod +x $HOME/testhome/run.sh
echo 'PATH=$PATH:$HOME/testhome/' >> $HOME/.bashrc
source $HOME/.bashrc
cp testplandisplay/js/springplan-1.0.0-jar-with-dependencies.jar $HOME/testhome
cd $HOME/testhome
java -jar springplan-1.0.0-jar-with-dependencies.jar > springplan.log &
startup.sh

