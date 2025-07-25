cmake ^
    -G Ninja ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -D PYTHON_EXECUTABLE=%PYTHON% ^
    -D USE_PYTHON=ON ^
    -D CMAKE_POLICY_VERSION_MINIMUM=3.5 ^
    .
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1
