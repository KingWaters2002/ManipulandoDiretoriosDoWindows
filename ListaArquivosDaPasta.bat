@echo off
:: Define o caminho completo do arquivo de saída (na mesma pasta do .bat)
set "saida=%~dp0listagem.txt"

echo Gerando lista de arquivos...

:: Redireciona toda a listagem para o arquivo de texto
> "%saida%" (
    echo Lista de arquivos da pasta: %cd%
    echo -----------------------------------

    :: Percorre recursivamente todos os arquivos (inclui subpastas)
    for /r %%f in (*) do (
        echo %%f
    )
)

:: Mostra onde a lista foi salva
echo Lista salva em: %saida%
exit
