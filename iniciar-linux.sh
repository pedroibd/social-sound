#!/usr/bin/env bash
# Social Sound - liga os servidores e abre a janela (equivalente ao iniciar.bat)
AQUI="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
. "$AQUI/_comum.sh"
. "$AQUI/config.sh"
mkdir -p "$AQUI/logs"

if [ ! -x "$AQUI/server/.venv/bin/python" ]; then
  echo "O Social Sound ainda nao foi instalado. Rode o instalar.sh primeiro."
  exit 1
fi

echo "Ligando o Social Sound... (a primeira vez demora um pouco)"

# 1) Servidor de voz (narracao) e da janela com abas
if porta_aberta 8000; then
  echo "O servidor de voz ja esta ligado."
else
  ( cd "$AQUI/server" && nohup .venv/bin/python server.py >"$AQUI/logs/servidor.log" 2>&1 & echo $! >"$AQUI/logs/servidor.pid" )
fi

# 2) Servidor do editor de video (opcional)
if [ -f "$AUTOEDITOR_DIR/server/index.js" ]; then
  if porta_aberta 4000; then
    echo "O editor de video ja esta ligado."
  else
    NODE=node
    for n in "$AUTOEDITOR_DIR/runtime/node" "$AUTOEDITOR_DIR/runtime/bin/node"; do
      [ -x "$n" ] && NODE="$n" && break
    done
    if command -v "$NODE" >/dev/null 2>&1; then
      ( cd "$AUTOEDITOR_DIR" && OPEN_BROWSER=0 nohup "$NODE" server/index.js >"$AQUI/logs/editor.log" 2>&1 & echo $! >"$AQUI/logs/editor.pid" )
    else
      echo "Node.js nao encontrado: so a aba \"Edicao de video\" ficara desligada."
    fi
  fi
else
  echo
  echo "Nao encontrei o editor de video na pasta indicada em config.sh."
  echo "A narracao abre normalmente; so a aba \"Edicao de video\" ficara desligada."
fi

if esperar_porta 8000 120; then
  abrir_janela "http://localhost:8000/estudio/"
  echo "Pronto. Para encerrar tudo e liberar a memoria, rode o parar.sh."
else
  echo "O servidor nao respondeu a tempo. Veja o erro em: $AQUI/logs/servidor.log"
  exit 1
fi
