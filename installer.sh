#!/bin/bash


# variables
#targetDir="ozwcp-""`date +%Y-%m-%d-%H-%M`"
targetDir="ozwcp-test"
libmicrohttpd_ver="libmicrohttpd-0.9.40"
libmicrohttpd_file="$libmicrohttpd_ver.tar.gz"
openzwave_URL="https://github.com/OpenZWave/open-zwave/archive/"
openzwave_branch="master"
openzwave_file="$openzwave_branch.zip"

ozwcp_URL="https://github.com/OpenZWave/open-zwave-control-panel/archive/"
ozwcp_branch="master"
ozwcp_file="$ozwcp_branch.zip"

# Make the directories we need
rm -Rf $targetDir
mkdir $targetDir









function pause (){
   read -p "$*"
}



function get_libmicrohttpd() {
	#wget --directory-prefix="$targetDir" "ftp://ftp.gnu.org/gnu/libmicrohttpd/$libmicrohttpd_file"
	cp $libmicrohttpd_file $targetDir
	tar -xzf "$targetDir/$libmicrohttpd_file" -C "$targetDir/"
	mv "$targetDir/$libmicrohttpd_ver" "$targetDir/libmicrohttpd"
	#cd "$targetDir/libmicrohttpd"
	#./configure
	#make --silent
	#make --silent install
	#cd ../
	############
	echo "LibHTTPD complete"
	#############
}

function get_openzwave() {
	#wget --directory-prefix="$targetDir" "$openzwave_URL/$openzwave_file"
	cp $openzwave_file $targetDir
	unzip "$targetDir/$openzwave_file" -d "$targetDir/"
	mv "$targetDir/open-zwave-$openzwave_branch" "$targetDir/open-zwave"
}

get_libmicrohttpd
get_openzwave








