@echo off
cls
:menu
cls
color 2

date /t
echo.
echo Computador: %computername%
echo.
echo Ola, vou te ajudar a configurar o IP da sua maquina, apenas siga os passo, por favor.
echo.
echo              MENU
echo ======================================
echo  * [1] CMD.                           *
echo  * [2] Ir ao IPv4 da sua internet.    *
echo  * [3] Configuracoes do IPv4.         *
echo  * [4] Possiveis resultados dos IP's  *
echo  *                                    * 
echo  * [0] para Fechar.                   *
echo ======================================
echo.

set /p opcao=Digite a opcao desejada:
echo.

if %opcao% equ 1 goto op1
if %opcao% equ 2 goto op2
if %opcao% equ 3 goto op3
if %opcao% equ 4 goto op4
if %opcao% equ 5 goto op5
if %opcao% equ 6 goto op6
if %opcao% equ 0 goto op0
if %opcao% GEQ 7 goto op7

:op1
start cmd.exe
echo Na tela que foi aberta, execute:
echo Digite [ipconfig];
echo A seguir aperte [Enter];
echo Depois Busque pelo numero de [Endereco IPv4].
echo.
pause
goto menu

:op2
start ncpa.cpl
echo Na tela que foi aberta, execute:
echo Com Botao direito do mouse, clique na internet que esta usando [Ethernet ou Wifi];
echo Depois va em [Propriedades];
echo Busque pelo [Protocolo IP Versao 4];
echo Clique em [Propriedades].
echo.
pause
goto menu

:op3
echo Clique em [Usar o seguinte endereco de IP];
echo Depois Em Endereco IP: [Coloque o IPv4 que esta no cmd];
echo A seguir em Mascara de sub-rede coloque [255.255.255.0];
echo Continuando em Gateway padrao coloque [10.1.1.1];
echo Em Servidor DNS preferencial digite [10.1.1.1];
echo Depois Em Servidor DNS alternativo coloque o mesmo IPv4 do cmd;
echo A seguir [Ok];
echo Finalmente em [Fechar].
echo.
pause
goto menu

:op4
echo Se em IPv4 no cmd aparecer um numero iniciado com 10, use esse IP.
echo Se seu IPv4 no cmd aparecer um numero iniciado com 169, digite 5.
echo Se seu IPv4 no cmd aparecer um numero iniciado com 192, digite 6.
echo.
pause
goto menu

:op5
echo start ncpa.cpl
echo Na tela que foi aberta, execute:
echo Continuando Botao direito do mouse, na internet que esta usando [Ethernet ou Wifi];
echo Clique em [Propriedades];
echo Depois Busque pelo [Protocolo IP Versao 4];
echo E clique em [Propriedades];
echo Clique em [Obter um endereco IP automaticamente];
echo Depois clique em [Obter o endereco dos servidores DNS automaticamente];
echo Continuando [Ok];
echo Finalmente [Fechar].

start cmd.exe
echo Na tela que foi aberta, execute:
echo Digite [ipconfig];
echo A seguir Aperte [Enter];
echo Depois Busque pelo numero que se encontra em Endereco IPV4;
echo Clique em [Usar o seguinte endereco de IP];
echo Depois Em Endereco IP: [Coloque o IPv4 que esta no cmd];
echo A seguir em Mascara de sub-rede coloque [255.255.255.0];
echo Depois em Gateway padrao coloque [10.1.1.1];
echo Em Servidor DNS preferencial digite [10.1.1.1];
echo Depois Em Servidor DNS alternativo coloque o mesmo IPv4 do cmd;
echo A seguir [Ok];
echo Finalmente em [Fechar].
echo.
pause
goto menu

:op6
start cmd.exe
echo Na tela que foi aberta, execute:
echo Digite [ipconfig];
echo Aperte [Enter];
echo Continuando Busque pelo numero que se encontra em Endereco IPV4;
echo Clique em [Usar o seguinte endereco de IP];
echo Depois Em Endereco IP: [10.1.1.(Qualquer numero do 1 ao 254)];
echo A seguir em Mascara de sub-rede coloque [255.255.255.0];
echo Continuando em Gateway padrao coloque [10.1.1.1];
echo Em Servidor DNS preferencial digite [10.1.1.1];
echo Depois Em Servidor DNS alternativo coloque o mesmo IPv4 do cmd;
echo Conitnuando [Ok];
echo Finalmente em [Fechar];
echo Tente ate achar um IPv4 livre para uso.
echo.
pause
goto menu

:op7
echo Opcao invalida! Digite outro numero do menu.
echo.
pause
goto menu

:op0
cls
start exit