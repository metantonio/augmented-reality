@echo off
echo ========================================
echo   Proyecto de Realidad Aumentada AR.js
echo ========================================
echo.
echo Iniciando servidor local en el puerto 8000...
echo.
echo Una vez iniciado el servidor:
echo 1. Abre http://localhost:8000/setup-marker.html para generar el marcador
echo 2. Luego abre http://localhost:8000/index-youtube.html para probar la app AR
echo.
echo Presiona Ctrl+C para detener el servidor
echo.
echo ========================================
echo.

REM Intentar con Python 3 primero
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Usando Python para iniciar el servidor...
    python -m http.server 8000
) else (
    REM Si Python no está disponible, intentar con Node.js
    node --version >nul 2>&1
    if %errorlevel% == 0 (
        echo Usando Node.js para iniciar el servidor...
        npx http-server -p 8000
    ) else (
        echo ERROR: No se encontro Python ni Node.js instalado.
        echo Por favor instala uno de los dos para continuar.
        pause
    )
)
