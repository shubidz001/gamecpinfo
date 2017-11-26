#!/bin/bash
cd /usr/local/gcp/installs/
wget http://lspublic.com/hlds.zip
apt-get install zip
unzip hlds.zip
rm -rf hlds.zip
cd /usr/local/gcp/installs/hlds
chmod +x hlds_run
chmod +x hlds_linux
cd
   echo "Powered by: shubi"
	 echo "Done. Bye!"
