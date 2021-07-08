**Passos para executar os testes**

1. Download do Phyton
https://www.python.org/downloads/
É importante adicionar o campo " Add Python 3.9 to PATH"
Após a instalação é necessário verificar se for criada as variáveis de ambiente...
Escrever Variáveis de ambiente no Pesquisar ... depois clicar em Avançado -> Variáveis de Ambiente

2. Instalação do RobotFrameWork
Digitar: pip install robotframework no prompt de comando parar instalar o robot
Digitar: robot --version para verificar a versão instalada

3. Instalação das Libraries
Libraries necessarias para Web e API:
SeleniumLibrary - para testes de web: Link do github.com/robotframework/SeleniumLibrary/
No Installation mostra o método usado no prompt para a instalação desta, digitar o comando abaixo no prompt:
pip install --upgrade robotframework-seleniumlibrary
httpLibrary (requests) - para testes de API: Link do github.com/bulkan/robotframework-requests/#readme
No Installation mostra o método usado no prompt para a instalação desta, digitar o comando abaixo no prompt:
pip install -U robotframework-requests

4. Ter uma IDE para abrir os arquivos, por exemplo VS Code

5. Instalação dos Drivers
É necessário a instalação de alguns drives para execução dos testes automatizados
github.com/mozilla/geckodriver/releases
sites.google.com/a/chromium.org/chromedriver/downloads
É importante lembrar que esses arquivos devem ser salvos na pasta Scripts dentro da pasta do Python, porque esta pasta já está vinculada as variáveis de ambiente.

6. Execução dos Testes
Na pasta onde encontra-se a pasta criada com os arquivos, segurar o Shift e clicar com o botão direito do mouse, para abrir o prompt de comando.
digitar robot + "nome da feature.robot e dar um enter, o teste será executado

