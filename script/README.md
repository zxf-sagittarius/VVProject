# XCode 环境变量

* SRCROOT
* BUILD_ROOT
* PROJECT_NAME
* ACTION
* CONFIGURATION
	* release  debug
   
* lipo xxx.framework/xxx -thin armv7 -output xxx_armv7
* lipo xxx.framework/xxx -thin arm64 -output xxx_arm64
* lipo -create xxx_armv7 xxx_arm64 -output xxx
* mv xxx xxx.framework/


build命令
* man xcodebuild


