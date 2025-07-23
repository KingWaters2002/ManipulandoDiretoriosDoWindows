@echo off
setlocal enabledelayedexpansion

:: Definindo nome do arquivo de saída
set "saida=%~dp0pfxEncontrados.txt"
:: Se o arquivo ja existir deleta ele
if exist "%saida%" del "%saida%"

:: Menu de opções
color 01
echo ===============================
echo BUSCA DE ARQUIVOS .PFX NO DISCO C:
echo ===============================
echo [1] - Ignorar C:\Program Files
echo [2] - Ignorar C:\Program Files (x86)
echo [3] - Ignorar ambos
echo [4] - Buscar em todo o disco C
echo ===============================
:: Pede qual opcap desejada
set /p op=Escolha uma opcao (1-4): 

:: Valida a opção e fecha o script se nao for valida
if "%op%"=="" (
    color 04
    echo Opcao invalida. Rode o script novamente!
    pause
    exit /b
)

if not "%op%"=="1" if not "%op%"=="2" if not "%op%"=="3" if not "%op%"=="4" (
    color 04
    echo Opcao invalida. Rode o script novamente!
    pause
    exit /b
)

:: Mensagem padrao pra embelezar
color 0A
echo.
echo Buscando arquivos .pfx... Aguarde.
echo Resultados serao salvos em: %saida%
echo.

:: Função para verificar se deve ignorar o caminho com base na opcao pedida anteriormente
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

:: Tabelinha de conclusao
color 0A
echo.
echo ===============================
echo Busca concluida!
echo Total de arquivos encontrados: 
find /c /v "" "%saida%"
echo ===============================
pause
exit /b
