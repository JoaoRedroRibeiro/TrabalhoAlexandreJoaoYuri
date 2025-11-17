# Guia Rápido de Início

## Para usuários Windows

1. Abra o PowerShell ou CMD na pasta do projeto
2. Execute o script de configuração:
   ```
   setup.bat
   ```
3. Ative o ambiente virtual:
   ```
   .venv\Scripts\activate
   ```
4. Execute o exemplo:
   ```
   python src\exemplo_uso.py
   ```

## Para usuários Linux/Mac

1. Abra o terminal na pasta do projeto
2. Execute o script de configuração:
   ```bash
   ./setup.sh
   ```
3. Ative o ambiente virtual:
   ```bash
   source .venv/bin/activate
   ```
4. Execute o exemplo:
   ```bash
   python src/exemplo_uso.py
   ```

## Configuração Manual (alternativa)

### Windows:
```bash
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
```

### Linux/Mac:
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## Importante

- Certifique-se de que sua `GOOGLE_API_KEY` está configurada no arquivo `.env`
- Para desativar o ambiente virtual, digite: `deactivate`
- Execute sempre dentro do ambiente virtual ativado (você verá `(.venv)` no início da linha de comando)
