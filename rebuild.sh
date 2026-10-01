#!/usr/bin/env bash
# 从原包完整复现补丁构建。路径按本机情况调整。
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"   # 仓库根目录
WORK="${ROOT}/../work"                  # apktool 解包目录
APK="${ROOT}/../base_original.apk"      # 原包
JDK="${JDK:-java}"                      # 需要 java 17+
APKTOOL="${APKTOOL:-apktool}"           # 需要 apktool 2.10+
BT="${BT:-build-tools-34}"              # 需要 zipalign / apksigner

# 1. 解包
"$APKTOOL" d -f -o "$WORK" "$APK"

# 2. 应用补丁:把 patches/ 下的文件按相对路径覆盖进 $WORK
cp -r "$ROOT/patches/smali_classes8" "$WORK/"
cp -r "$ROOT/patches/res" "$WORK/"

# 3. 构建
"$APKTOOL" b "$WORK" -o "$ROOT/out_unsigned.apk"

# 4. 对齐(uncompressed lib/arsc 需要页对齐)
"$BT/zipalign" -f -p 4 "$ROOT/out_unsigned.apk" "$ROOT/aligned.apk"

# 5. 签名(密钥自己生成: keytool -genkeypair -keystore my.jks ...)
"$JAVA" -jar "$BT/lib/apksigner.jar" sign \
  --ks my.jks --ks-key-alias myalias \
  --ks-pass pass:xxxx --key-pass pass:xxxx \
  --out final.apk "$ROOT/aligned.apk"

# 6. 验签
"$JAVA" -jar "$BT/lib/apksigner.jar" verify --print-certs "$ROOT/final.apk"
