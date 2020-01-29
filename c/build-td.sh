echo "building td..."

. ./tdenv_local.sh

pushd $tdhome

mkdir -pv build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=../example/cpp/td ..
cmake --build . --target install

popd

echo "building td done."

