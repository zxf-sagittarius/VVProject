#!/bin/bash
if [ "${ACTION}" = "build" ]
then
# 输出目录
INSTALL_DIR=${SRCROOT}/Products/${PROJECT_NAME}.framework
# 真机目录
DEVICE_DIR=${BUILD_ROOT}/${CONFIGURATION}-iphoneos/${PROJECT_NAME}.framework
# 模拟器目录
SIMULATOR_DIR=${BUILD_ROOT}/${CONFIGURATION}-iphonesimulator/${PROJECT_NAME}.framework

#echo "安装路径：${INSTALL_DIR}"
#echo "真机：${DEVICE_DIR}"
#echo "模拟器：${SIMULATOR_DIR}"

#lipo -info ${DEVICE_DIR}/${PROJECT_NAME}
#lipo -info ${SIMULATOR_DIR}/${PROJECT_NAME}

pwd

if [ -d "${INSTALL_DIR}" ]
then
rm -rf "${INSTALL_DIR}"
fi

mkdir -p "${INSTALL_DIR}"

#xcodebuild -configuration ${CONFIGURATION} -target "${PROJECT_NAME}" -sdk iphoneos
#clean build
#xcodebuild -configuration ${CONFIGURATION} -target "${PROJECT_NAME}" -sdk iphonesimulator
#clean build

cp -R "${DEVICE_DIR}/" "${INSTALL_DIR}/"
#ditto "${DEVICE_DIR}/Headers" "${INSTALL_DIR}/Headers"

# 使用lipo命令将其合并成一个通用framework  
# 最后将生成的通用framework放置在工程根目录下新建的Products目录下  
lipo -create "${DEVICE_DIR}/${PROJECT_NAME}" "${SIMULATOR_DIR}/${PROJECT_NAME}" -output "${INSTALL_DIR}/${PROJECT_NAME}"

# 查看支持的架构
lipo -info ${INSTALL_DIR}/${PROJECT_NAME}

#open "${DEVICE_DIR}"
#open "${SRCROOT}/Products"
fi
