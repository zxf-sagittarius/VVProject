
FMK_NAME=${PROJECT_NAME}
# 输出路径
INSTALL_DIR=${SRCROOT}/Products/${FMK_NAME}.framework
# build路径
WRK_DIR=build
# 真机
DEVICE_DIR=${WRK_DIR}/${CONFIGURATION}-iphoneos/${FMK_NAME}.framework
# 模拟器
SIMULATOR_DIR=${WRK_DIR}/${CONFIGURATION}-iphonesimulator/${FMK_NAME}.framework

echo "模拟器${SIMULATOR_DIR}  ${DEVICE_DIR}"

# 真机
xcodebuild -configuration ${CONFIGURATION} -target "${FMK_NAME}" -sdk iphoneos

# 模拟器
xcodebuild -configuration ${CONFIGURATION} -target "${FMK_NAME}" -sdk iphonesimulator

# Cleaning the oldest.
if [ -d "${INSTALL_DIR}" ]
then
rm -rf "${INSTALL_DIR}"
fi

mkdir -p "${INSTALL_DIR}"
cp -R "${DEVICE_DIR}/" "${INSTALL_DIR}/"

# Uses the Lipo Tool to merge both binary files into one Universal final product.
lipo -create "${DEVICE_DIR}/${FMK_NAME}" "${SIMULATOR_DIR}/${FMK_NAME}" -output "${INSTALL_DIR}/${FMK_NAME}"

lipo -info ${INSTALL_DIR}/${FMK_NAME}

rm -r "${WRK_DIR}"

