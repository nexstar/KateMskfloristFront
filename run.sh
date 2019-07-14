#! /bin/bash

# Setting Database
#export MONGO_URL="mongodb://DBUser:DBPassword@ip:port/collection_name"
#echo $MONGO_URL
DATE=$(date +%Y-%m-%d-%H:%M:%S)

makeAPKPosition="../apk"
server="http://xxx.xxx.xxx.xxx:port"
keyname="key"
ApkName="android-release-unsigned.apk"


case $1 in
    init)
        echo "Init..."
        meteor npm install
    ;;

    run)
      if [[ -n "$2" ]]; then
        meteor run -p $2
      else
        meteor run
      fi
    ;;

    device)
        meteor run android-device
    ;;
    android)
        meteor run android
    ;;
    build)
        meteor build $makeAPKPosition --server=$server
    ;;
    ios)
        meteor run ios-device
    ;;
    sign)
        #setting your key  and zipalign
        #jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 $ApkName  $keyname
        #./zipalign -v 4 $ApkName  $DATE.apk
    ;;

    deploy)
        mup setup
        mup deploy
    ;;

    *)

      echo " input correct parameter:
      init - initial the project.
      device - meteor run real phone.
      run (port) - meteor run 
      android - meteorr run android emulator.
      deploy - deploy to server
          "
    ;;
esac


