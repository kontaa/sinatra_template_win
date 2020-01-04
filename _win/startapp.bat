@echo off
setlocal
pushd "%~dp0"
cd ..
c:\_opt\dev\lib\ruby\Ruby26-x64\bin\rackup -p 19002 -o 0.0.0.0 -P pid.txt -s webrick
popd

