#!/bin/bash

# Instalação do Takeout após verificação de dependências
echo "Verificando dependências para Takeout..."
if composer global show tightenco/takeout >/dev/null 2>&1; then
    echo "Takeout instalado."
    read -p "Deseja instalar o SQL Server? (s/n): " install_mssql
    if [[ "$install_mssql" == "s" ]]; then
        takeout enable mssql
    else
        echo "Instalação do SQL Server ignorada."
    fi
else
    echo "Dependências para Takeout não atendidas. Verifique PHP, Composer e Laravel Installer."
fi
