adb forward tcp:7912 tcp:7912

REM adb uninstall com.github.uiautomator
REM adb uninstall com.github.uiautomator.test
REM adb install app-debug.apk
REM adb install app-debug-androidTest.apk

adb push atx-agent /data/local/tmp
adb shell chmod 777 /data/local/tmp/atx-agent
adb shell /data/local/tmp/atx-agent -stop

REM adb shell /data/local/tmp/atx-agent -d -t 10.240.171.86:8000 -nouia
adb shell /data/local/tmp/atx-agent -d -t 10.240.187.224:8000 -nouia
REM adb shell /data/local/tmp/atx-agent -d -t 10.246.46.160:8200 -nouia
REM pause