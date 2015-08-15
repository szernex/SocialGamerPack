# run install script if MC server or launchwrapper s missing
if [ ! -f minecraft_server.1.7.10.jar ]; then
    echo "Missing required jars. Running install script!"
    sh ./Install.sh
fi

echo "Starting server"
java -Dlog4j.configurationFile=log4j2.xml -Xms2048m -Xmx4096m -XX:PermSize=256m -XX:+UseG1GC -jar forge-1.7.10-10.13.4.1448-1.7.10-universal.jar nogui
echo "Server process finished"
pause