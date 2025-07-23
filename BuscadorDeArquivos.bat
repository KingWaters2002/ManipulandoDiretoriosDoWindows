@echo off
setlocal enabledelayedexpansion

:: Define nome do arquivo de saída
set "saida=%~dp0pfx_encontrados.txt"
if exist "%saida%" del "%saida%"

:: Menu de opções
echo ===============================
echo BUSCA DE ARQUIVOS .PFX NO DISCO C:
echo ===============================
echo [1] - Ignorar C:\Program Files
echo [2] - Ignorar C:\Program Files (x86)
echo [3] - Ignorar ambos
echo [4] - Buscar em todo o disco C
echo ===============================
set /p op=Escolha uma opcao (1-4): 

:: Valida a opção
if "%op%"=="" (
    echo Opcao invalida.
    pause
    exit /b
)

echo.
echo Buscando arquivos .pfx... Aguarde.
echo Resultados serao salvos em: %saida%
echo.

:: Função para verificar se deve ignorar o caminho
:busca
for /r "C:\" %%f in (*.pfx) do (
    set "arquivo=%%f"

    set "ignorar=0"

    if "%op%"=="1" (
        echo !arquivo! | find /i "C:\Program Files\" >nul && set "ignorar=1"
    )

    if "%op%"=="2" (
        echo !arquivo! | find /i "C:\Program Files (x86)\" >nul && set "ignorar=1"
    )

    if "%op%"=="3" (
        echo !arquivo! | find /i "C:\Program Files\" >nul && set "ignorar=1"
        echo !arquivo! | find /i "C:\Program Files (x86)\" >nul && set "ignorar=1"
    )

    if !ignorar! equ 0 (
        echo !arquivo!
        echo !arquivo! >> "%saida%"
    )
)

echo.
echo ===============================
echo Busca concluida!
echo Total de arquivos encontrados: 
find /c /v "" "%saida%"
echo ===============================
pause
exit /b
