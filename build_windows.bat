mkdir lib
set libdir=%cd%\lib
cd contrib\vstudio\vc12
call "%programfiles(x86)%\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86
msbuild /p:Configuration=Debug;Platform=Win32 zlibvc.sln
msbuild /p:Configuration=Release;Platform=Win32 zlibvc.sln
cd x86
xcopy ZlibDllDebug %libdir%\DllDebug\ /y
xcopy ZlibDllRelease %libdir%\DllRelease\ /y
xcopy ZlibStatDebug %libdir%\StatDebug\ /y
xcopy ZlibStatRelease %libdir%\StatRelease\ /y