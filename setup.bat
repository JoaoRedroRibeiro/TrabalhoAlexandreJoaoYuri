@echo off
REM Script de configuração do ambiente virtual para RAG Agent
REM Para Windows

echo ================================================
echo   RAG Agent - Configuracao do Ambiente
echo ================================================
echo.

REM Verificar se Python está instalado
python --version >nul 2>&1
if errorlevel 1 (
    echo X Erro: Python nao esta instalado.
    echo    Por favor, instale Python 3.8 ou superior.
    pause
    exit /b 1
)

python --version
echo.

REM Criar ambiente virtual
echo Criando ambiente virtual (.venv)...
python -m venv .venv

if errorlevel 1 (
    echo X Erro ao criar ambiente virtual.
    pause
    exit /b 1
)

echo OK Ambiente virtual criado com sucesso!
echo.

REM Ativar ambiente virtual
echo Ativando ambiente virtual...
call .venv\Scripts\activate.bat

if errorlevel 1 (
    echo X Erro ao ativar ambiente virtual.
    pause
    exit /b 1
)

echo OK Ambiente virtual ativado!
echo.

REM Atualizar pip
echo Atualizando pip...
python -m pip install --upgrade pip --quiet

if errorlevel 1 (
    echo ! Aviso: Nao foi possivel atualizar o pip.
) else (
    echo OK pip atualizado!
)
echo.

REM Instalar dependências
echo Instalando dependencias do requirements.txt...
pip install -r requirements.txt

if errorlevel 1 (
    echo X Erro ao instalar dependencias.
    pause
    exit /b 1
)

echo OK Dependencias instaladas com sucesso!
echo.

REM Verificar .env
if exist ".env" (
    echo OK Arquivo .env encontrado!
    echo    Certifique-se de que sua GOOGLE_API_KEY esta configurada.
) else (
    echo ! Arquivo .env nao encontrado!
    echo   Criando arquivo .env de exemplo...
    echo GOOGLE_API_KEY=sua_chave_aqui > .env
    echo   Por favor, edite o arquivo .env com sua API Key do Google Gemini.
)
echo.

echo ================================================
echo OK Configuracao concluida com sucesso!
echo ================================================
echo.
echo Para usar o projeto:
echo   1. Ative o ambiente virtual: .venv\Scripts\activate
echo   2. Execute o exemplo: python src\exemplo_uso.py
echo   3. Para desativar: deactivate
echo.
echo Lembre-se de configurar sua GOOGLE_API_KEY no arquivo .env!
echo.

pause
