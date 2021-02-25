@echo off
cls
:menu
cls
color 2

date /t
echo.
echo Computador: %computername%
echo.
echo Ola, vou te ajudar a configurar o IP da sua maquina, apenas siga os passo, por favor..
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
start %windir%\system32\cmd.exe
echo Digite [ipconfig] depois Busque pelo numero IPv4
echo.
pause
goto menu

:op2
echo Aperte WINDONS + R depois Digite [control netconnections] a seguir [Ok] continuando com Botao direito do mouse, clique na internet que esta usando [Ethernet ou Wifi] depois va em [Propriedades] e Busque pelo [Protocolo IP Versao 4] clique em [Propriedades].
echo.
pause
goto menu

:op3
echo Clique em [Usar o seguinte endereco de IP] depois Em Endereco IP: [Coloque o IPv4 que esta no cmd] a seguir em Mascara de sub-rede coloque [255.255.255.0] continuando em Gateway padrao coloque [10.1.1.1].
echo Em Servidor DNS preferencial digite [10.1.1.1] depois Em Servidor DNS alternativo coloque o mesmo IPv4 do cmd a seguir [Ok] finalmente em [Fechar].
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
echo Passo 1 = Aperte WINDONS + R depois Digite [control netconnections] a seguir [Ok] continuando Botao direito na internet que esta usando [Ethernet ou Wifi] clique em [Propriedades] depois Busque pelo [Protocolo IP Versao 4] e clique em [Propriedades].
echo Passo 2 = Clique em [Obter um endereco IP automaticamente] depois clique em [Obter o endereco dos servidores DNS automaticamente] continuando [Ok] finalmente [Fechar].
echo Passo 3 = Aperte o botao WINDOWS + R depois Digite [cmd] a seguir [Ok] continuando Digite [ipconfig] a seguir Aperte [Enter] depois Busque pelo numero que se encontra em Endereco IPV4.
echo Passo 4 = Clique em [Usar o seguinte endereco de IP] depois Em Endereco IP: [Coloque o IPv4 que esta no cmd] a seguir em Mascara de sub-rede coloque [255.255.255.0] depois em Gateway padrao coloque [10.1.1.1].
echo Passo 5 = Em Servidor DNS preferencial digite [10.1.1.1] depois Em Servidor DNS alternativo coloque o mesmo IPv4 do cmd a seguir [Ok] finalmente em [Fechar].
echo.
pause
goto menu

:op6
echo Passo 1 = Aperte o botao WINDOWS + R depois Digite [cmd] a seguir [Ok] continuando Digite [ipconfig] e Aperte [Enter] continuando Busque pelo numero que se encontra em Endereco IPV4.
echo Passo 2 = Clique em [Usar o seguinte endereco de IP] depois Em Endereco IP: [10.1.1.(Qualquer numero do 1 ao 254)] a seguir em Mascara de sub-rede coloque [255.255.255.0] continuando em Gateway padrao coloque [10.1.1.1].
echo Passo 3 = Em Servidor DNS preferencial digite [10.1.1.1] depois Em Servidor DNS alternativo coloque o mesmo IPv4 do cmd conitnuando [Ok] finalmente em [Fechar].
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
