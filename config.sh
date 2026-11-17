# Configuracao para Linux e macOS (equivalente ao config.bat do Windows).
# Pasta do seu AutoEditor (a pasta que contem "server" e "out").
# Exemplo: AUTOEDITOR_DIR="$HOME/AutoEditor-MS"
# Se voce nao usa o editor de video, pode deixar como esta.
export AUTOEDITOR_DIR="COLE_O_CAMINHO_DO_AutoEditor-MS_AQUI"

# Opcional: forcar o dispositivo da voz. Por padrao usa a placa NVIDIA (cuda) se existir e, se nao,
# a CPU (mais lenta). Remova o # da linha abaixo para forcar a CPU.
# export DEVICE=cpu
# No Mac com chip Apple, "mps" pode funcionar, mas nao foi testado:
# export DEVICE=mps
