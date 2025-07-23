@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo Buscando arquivos com extensao .pfx no disco C...
echo Isso pode levar alguns minutos. Aguarde...
echo ==========================================

:: Cria/limpa um arquivo temporário para armazenar os resultados
set "saida=%~dp0pfx_encontrados.txt"
if exist "%saida%" del "%saida%"

:: Busca arquivos .pfx no disco C: e salva a saída
for /r "C:\" %%f in (*.pfx) do (
    echo %%f >> "%saida%"
    echo %%f
)

echo ==========================================
echo Busca concluida!
echo Os arquivos encontrados estao listados em:
echo %saida%
pause
