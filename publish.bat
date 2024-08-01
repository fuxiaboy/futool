@echo off
REM 切换到官方npm镜像源
npm config set registry https://registry.npmjs.org/
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to set registry to npmjs.org
    exit /b 1
)

REM 构建项目
npm run build
IF %ERRORLEVEL% NEQ 0 (
    echo Build failed
    exit /b 1
)

REM 发布到npm
npm publish
IF %ERRORLEVEL% NEQ 0 (
    echo Publish failed
    exit /b 1
)

REM 切换回npmmirror镜像源
npm config set registry https://registry.npmmirror.com/
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to set registry to npmmirror.com
    exit /b 1
)

echo Publish successful
exit /b 0
