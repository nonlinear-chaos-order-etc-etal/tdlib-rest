echo "building td..."

. ./tdenv_local.sh

pushd $tdhome

mkdir -pv build
cd build

# Also see https://github.com/tdlib/td#building for additional details on TDLib building.

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=../example/cpp/td ..
cmake --build . --target install

popd

echo "building td done."

