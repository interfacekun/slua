rmdir /S /Q build
mkdir build
cd build

::android.toolchain.cmake�ļ�·��
set ANDROID_TOOLCHAIN_CMAKE="..\\cmake\\modules\\android-cmake\\android.toolchain.cmake"
::NDK path
set NDK_PATH="D:\\backup\\android-ndk-r10e"
::������� Release or Debug
set BUILD_TYPE="Release"
::android api level
set API_LEVEL=21
::�ܹ����� x86 or armeabi-v7a
set ABI_TYPE="armeabi-v7a"

cmake -DCMAKE_TOOLCHAIN_FILE=%ANDROID_TOOLCHAIN_CMAKE% -DANDROID_NDK=%NDK_PATH% -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -DANDROID_NATIVE_API_LEVEL=%API_LEVEL% -DANDROID_ABI=%ABI_TYPE% -DPLATFORM="Android" -G "MinGW Makefiles" ../
mingw32-make

copy /Y src\\libslua.so ..\\..\\Assets\\Plugins\\Android\\libs\\armeabi-v7a\\libslua.so

::cd ..
::rmdir /S /Q build
::mkdir build
::cd build

::set ABI_TYPE="x86"

::cmake -DCMAKE_TOOLCHAIN_FILE=%ANDROID_TOOLCHAIN_CMAKE% -DANDROID_NDK=%NDK_PATH% -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -DANDROID_NATIVE_API_LEVEL=%API_LEVEL% -DANDROID_ABI=%ABI_TYPE% -DPLATFORM="Android" -G "MinGW Makefiles" ../
::mingw32-make

::copy src/libslua.so ..\..\Assets\Plugins\Android\libs\x86\libslua.so

cd ..