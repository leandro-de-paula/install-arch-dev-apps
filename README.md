# Archlinux Post Install Script

Este é um script de pós-instalação para Archlinux que instala uma série de ferramentas e pacotes necessários para desenvolvimento. 

## Ferramentas Instaladas
- FiraCode font
- VSCode
- PHP e extensões
- Composer
- Laravel Valet
- ZSH e plugins
- MySQL Client & DBeaver
- Docker
- Appimagelauncher
- NVM (Node Version Manager)
- Laravel Valet

## Pré-requisitos
Certifique-se de que você tem `paru` (AUR helper) instalado no seu sistema. Se não tiver, você pode instalá-lo seguindo as instruções [aqui](https://github.com/Morganamilo/paru).

## Instruções de Uso

1. Clone este repositório em seu diretório local:
    **HTTPS:**
    ```bash
    git clone https://github.com/leandro-de-paula/install-arch-dev-apps.git
    cd install-arch-dev-apps
    ```
    **SSH:**
    ```bash
    git clone git@github.com:leandro-de-paula/install-arch-dev-apps.git
    cd install-arch-dev-apps
    ```
    **GitHub CLI:**
    ```bash
    gh repo clone leandro-de-paula/install-arch-dev-apps    
    cd install-arch-dev-apps
    ```



2. Dê permissão de execução ao script:
    ```bash
    chmod +x install-arch-dev-apps.sh
    ```

3. Execute o script:
    ```bash
    ./install-arch-dev-apps.sh
    ```

O script irá executar automaticamente todos os comandos necessários para instalar e configurar as ferramentas listadas acima.


