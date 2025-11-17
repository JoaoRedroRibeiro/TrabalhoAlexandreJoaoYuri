#!/bin/bash

# Script de configuração do ambiente virtual para RAG Agent
# Para Linux/Mac

echo "================================================"
echo "  RAG Agent - Configuração do Ambiente"
echo "================================================"
echo ""

# Verificar se Python está instalado
if ! command -v python3 &> /dev/null; then
    echo "❌ Erro: Python 3 não está instalado."
    echo "   Por favor, instale Python 3.8 ou superior."
    exit 1
fi

echo "✓ Python encontrado: $(python3 --version)"
echo ""

# Criar ambiente virtual
echo "📦 Criando ambiente virtual (.venv)..."
python3 -m venv .venv

if [ $? -eq 0 ]; then
    echo "✓ Ambiente virtual criado com sucesso!"
else
    echo "❌ Erro ao criar ambiente virtual."
    exit 1
fi
echo ""

# Ativar ambiente virtual
echo "🔧 Ativando ambiente virtual..."
source .venv/bin/activate

if [ $? -eq 0 ]; then
    echo "✓ Ambiente virtual ativado!"
else
    echo "❌ Erro ao ativar ambiente virtual."
    exit 1
fi
echo ""

# Atualizar pip
echo "⬆️  Atualizando pip..."
pip install --upgrade pip --quiet

if [ $? -eq 0 ]; then
    echo "✓ pip atualizado!"
else
    echo "⚠️  Aviso: Não foi possível atualizar o pip."
fi
echo ""

# Instalar dependências
echo "📚 Instalando dependências do requirements.txt..."
pip install -r requirements.txt

if [ $? -eq 0 ]; then
    echo "✓ Dependências instaladas com sucesso!"
else
    echo "❌ Erro ao instalar dependências."
    exit 1
fi
echo ""

# Verificar .env
if [ -f ".env" ]; then
    echo "✓ Arquivo .env encontrado!"
    echo "  Certifique-se de que sua GOOGLE_API_KEY está configurada."
else
    echo "⚠️  Arquivo .env não encontrado!"
    echo "  Criando arquivo .env de exemplo..."
    echo "GOOGLE_API_KEY=sua_chave_aqui" > .env
    echo "  Por favor, edite o arquivo .env com sua API Key do Google Gemini."
fi
echo ""

echo "================================================"
echo "✅ Configuração concluída com sucesso!"
echo "================================================"
echo ""
echo "Para usar o projeto:"
echo "  1. Ative o ambiente virtual: source .venv/bin/activate"
echo "  2. Execute o exemplo: python src/exemplo_uso.py"
echo "  3. Para desativar: deactivate"
echo ""
echo "Lembre-se de configurar sua GOOGLE_API_KEY no arquivo .env!"
echo ""
