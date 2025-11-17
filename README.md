# RAG Agent - Assistente Inteligente com Google Gemini

Este projeto implementa um agente RAG (Retrieval-Augmented Generation) usando LangChain e Google Gemini para responder perguntas baseadas em documentos locais.

## 📋 Pré-requisitos

- Python 3.8 ou superior
- Conta Google Cloud com API Key do Google Gemini
- Git

## 🚀 Configuração do Ambiente

### Windows

1. Clone o repositório:
```bash
git clone https://github.com/JoaoRedroRibeiro/TrabalhoAlexandreJoaoYuri.git
cd TrabalhoAlexandreJoaoYuri
```

2. Execute o script de configuração:
```bash
setup.bat
```

Ou manualmente:
```bash
# Criar ambiente virtual
python -m venv .venv

# Ativar ambiente virtual
.venv\Scripts\activate

# Instalar dependências
pip install -r requirements.txt
```

### Linux/Mac

1. Clone o repositório:
```bash
git clone https://github.com/JoaoRedroRibeiro/TrabalhoAlexandreJoaoYuri.git
cd TrabalhoAlexandreJoaoYuri
```

2. Execute o script de configuração:
```bash
chmod +x setup.sh
./setup.sh
```

Ou manualmente:
```bash
# Criar ambiente virtual
python3 -m venv .venv

# Ativar ambiente virtual
source .venv/bin/activate

# Instalar dependências
pip install -r requirements.txt
```

## 🔑 Configuração da API Key

1. Obtenha sua API Key do Google Gemini em: https://makersuite.google.com/app/apikey

2. O arquivo `.env` já está configurado no projeto. Caso precise criar um novo:
```bash
GOOGLE_API_KEY=sua_chave_aqui
```

## ▶️ Como Usar

### Ativar o ambiente virtual

**Windows:**
```bash
.venv\Scripts\activate
```

**Linux/Mac:**
```bash
source .venv/bin/activate
```

### Executar o agente

```bash
python src/exemplo_uso.py
```

## 📁 Estrutura do Projeto

```
.
├── data/                    # Documentos para o RAG
│   ├── python_best_practices.txt
│   └── langchain_guide.txt
├── src/                     # Código fonte
│   ├── rag_agent.py        # Classe principal do agente RAG
│   └── exemplo_uso.py      # Exemplo de uso
├── faiss_index/            # Índice vetorial (gerado automaticamente)
├── .env                    # Variáveis de ambiente (API keys)
├── .gitignore             # Arquivos ignorados pelo git
├── requirements.txt        # Dependências do projeto
├── setup.sh               # Script de setup para Linux/Mac
├── setup.bat              # Script de setup para Windows
└── README.md              # Este arquivo
```

## 📚 Funcionalidades

- Carregamento automático de documentos da pasta `data/`
- Criação de embeddings usando Google Gemini ou HuggingFace
- Armazenamento vetorial com FAISS
- Interface de chat interativa
- Respostas contextualizadas baseadas nos documentos

## 🛠️ Tecnologias Utilizadas

- **LangChain**: Framework para desenvolvimento de aplicações com LLMs
- **Google Gemini**: Modelo de linguagem de última geração
- **FAISS**: Biblioteca para busca de similaridade vetorial
- **Python-dotenv**: Gerenciamento de variáveis de ambiente

## 💡 Exemplos de Perguntas

- "O que são decoradores em Python?"
- "Como funciona o RAG no LangChain?"
- "Quais são as boas práticas de Python?"

## 🔧 Desativar o ambiente virtual

Quando terminar de usar:
```bash
deactivate
```

## 📝 Notas

- Certifique-se de que sua API Key do Google Gemini está válida
- Adicione seus próprios documentos `.txt` na pasta `data/` para personalizar o conhecimento do agente
- O índice vetorial é salvo em `faiss_index/` e será reusado em execuções futuras

## 🤝 Contribuindo

Sinta-se à vontade para contribuir com melhorias e novas funcionalidades!

## 📄 Licença

Este projeto é de código aberto e está disponível para uso educacional.
