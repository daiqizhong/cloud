#!/bin/sh

echo 'please specify your jdk software path'
read _path
_FILE=$_path
 
#这里取值 需用双引号
echo "JDK software location is [$_path]"

#if [ ! -d "$_path" ]; then
# echo "JDK software location [$_path] is not exists"
#  exit
#fi
#检查是否有执行权限
if [ ! -x "$_path" ]; then 
  chmod +x "$_path"
fi 

echo 'please specify your jdk install path'
read _install
echo "JDK software install location is [$_install]"

if [ ! -d "$_install" ]; then
  echo "JDK software location [$_install] is not exists"
  exit
fi

cp "$_path" "$_install"
cd "$_install"
_TEMP="$_install""/"${_FILE##*/}
sh $_TEMP
rm -fr $_TEMP

done


