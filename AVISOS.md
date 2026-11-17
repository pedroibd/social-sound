# Avisos e créditos

## 1. O que é este projeto

Social Sound: ferramenta local de narração com clonagem de voz, preparação de roteiro, legendas (SRT) e janela com abas para o editor de vídeo.

Foi criado com ajuda de inteligência artificial (Claude, da Anthropic) e testado só em parte. É oferecido "como está", sem garantia de funcionamento, e o uso é por conta e risco de quem usa.

Não tem ligação com os projetos e empresas citados abaixo, nem com Suno, Spotify, Deezer, YouTube ou qualquer outra plataforma. A licença dos arquivos deste repositório está em [LICENSE](LICENSE) (MIT).

## 2. Programas e modelos de terceiros

Nada abaixo está dentro deste repositório. O instalador baixa direto das fontes oficiais, e cada item segue a licença própria. Não redistribua os modelos; aponte para os links oficiais.

| Item | Licença | Fonte |
|---|---|---|
| VoxCPM / VoxCPM2 (narração) | Apache-2.0 | github.com/OpenBMB/VoxCPM (confira a licença do modelo na página dele no Hugging Face) |
| PyTorch e torchaudio | BSD | pytorch.org |
| Hugging Face Hub | Apache-2.0 | github.com/huggingface/huggingface_hub |
| NumPy | BSD-3 | numpy.org |
| SoundFile | BSD-3 | pypi.org/project/soundfile |
| FastAPI | MIT | fastapi.tiangolo.com |
| Uvicorn | BSD-3 | uvicorn.org |
| python-multipart | Apache-2.0 | pypi.org/project/python-multipart |

**Aba Roteiro** (instalada pelo `instalar.bat`):

| Item | Licença | Fonte |
|---|---|---|
| ONNX Runtime | MIT | onnxruntime.ai |
| num2words | LGPL | pypi.org/project/num2words |
| Modelo Mark (acentos) | Apache-2.0 | huggingface.co/Mythologic/mark |

**Aba Legendas, modo Preciso** (instalada pelo `instalar.bat`):

| Item | Licença | Fonte |
|---|---|---|
| faster-whisper e CTranslate2 | MIT | github.com/SYSTRAN/faster-whisper |
| PyAV | BSD-3 | pypi.org/project/av |
| Modelos Whisper | MIT | github.com/openai/whisper |

**Interface** (já compilada em `server/web`): React (MIT), Vite (MIT), Tailwind CSS (MIT), lucide-react (ISC).

**Editor de vídeo:** a aba "Edição de vídeo" só abre o AutoEditor MS que cada pessoa já tem instalado. O AutoEditor MS **não** faz parte deste repositório e tem licença própria, que **não** permite uso comercial (https://github.com/pedroibd/autoeditor-ms). Não o redistribua.

## 3. Uso responsável

- Clone apenas a sua própria voz ou a de quem autorizou. Não use para enganar, imitar ou prejudicar outras pessoas.
- Se publicar vídeos com voz sintética, siga as regras de aviso de conteúdo sintético da plataforma (por exemplo, YouTube).
- Isto não é aconselhamento jurídico.

## 4. Contribuindo e compartilhando

- Compartilhe o link deste repositório. Não compartilhe a sua pasta já instalada: ela tem as suas vozes, modelos e arquivos pessoais (o `.gitignore` já evita enviá-los ao GitHub).
- Se alterar o `config.bat` com o caminho do seu computador, não envie essa alteração ao repositório.
