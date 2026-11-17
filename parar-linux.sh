#!/usr/bin/env bash
# Encerra o servidor de voz e o editor de video, liberando a memoria da placa de video.
AQUI="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
. "$AQUI/_comum.sh"
encerrar_pidfile "$AQUI/logs/servidor.pid"
encerrar_pidfile "$AQUI/logs/editor.pid"
for p in 8000 4000; do encerrar_porta "$p"; done
echo "Social Sound e editor de video encerrados."
