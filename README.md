# 🚀 Obby - SkyCity

Projeto acadêmico de um jogo do gênero **Obby** (Obstacle Course) desenvolvido na plataforma **Roblox Studio**. O projeto integra o currículo de Design de Jogos do curso de Sistemas de Informação da **UPIS**.

---

## 📜 Documentação do Projeto

Abaixo estão os documentos detalhados sobre a concepção e o desenvolvimento do jogo:

| Documento | Link de Acesso |
| :--- | :--- |
| 📄 **GDD** (Game Design Document) | [Visualizar Documento](docs/GDD%20-%20Documento.docx) |
| 🔊 **SDD** (Sound Design Document) | [Visualizar Documento](docs/SDD%20-%20Sound%20Design%20Document.docx) |

---

## 🕹️ Visão Geral e Gameplay

O jogo se passa em uma cidade futurista onde foi criado um grande circuito de obstáculos para testar as habilidades dos participantes. O ambiente conta com estruturas elevadas e plataformas suspensas no ar, exigindo precisão e coordenação.

### 🛠️ Tecnologias e Ferramentas
* **Engine:** Roblox Studio
* **Linguagem:** Lua
* **Assets de Áudio:** Roblox Library

### ⌨️ Controles e Comandos
| Ação | Comando |
| :--- | :--- |
| **Movimentação** | `W` `A` `S` `D` |
| **Pular** | `Barra de Espaço` |
| **Correr (Sprint)** | `Shift Esquerdo` |
| **Câmera** | `Botão Direito do Mouse` |

### ⚠️ Regras do Jogo
* O objetivo principal é completar o percurso para provar sua capacidade.
* O maior desafio é evitar quedas no *void* (vazio) ao errar saltos ou perder o equilíbrio.
* Em caso de queda, você renascerá no último checkpoint salvo.
* A chave para a vitória é a paciência, melhorar a precisão dos movimentos e tentar novamente até conseguir avançar.

---

## 👥 Equipe e Funções

O projeto foi desenvolvido sob a orientação do docente **Rodrigo de Carvalho**.

| Função | Responsáveis |
| :--- | :--- |
| 🚀 **Game Design / Direção Geral** | João Luís, Kauê |
| 💻 **Programação / Lógica de Jogo** | João Luís, Kauê, João Pedro, Pedro |
| 🎨 **Arte / Cenários** | João Luís, Kauê |
| 🔊 **Trilha Sonora / Efeitos** | Kauê |
| 🔍 **Pesquisa / Avaliação** | João Pedro, João Luís, Kauê, Yasmin, Pedro, Alisson, Quézia |

---

## 📁 Estrutura do Repositório

    Projeto-Obby-SkyCity/
    ├── .gitignore
    ├── README.md
    ├── docs/
    │   ├── images/
    │   │   ├── Gameplayscreen.jpeg
    │   │   ├── SpawnPoint.jpeg
    │   │   └── menuScreen.jpeg
    │   ├── GDD - Documento.docx
    │   └── SDD - Sound Design Document.docx
    ├── images/
    │   ├── Final.jpeg
    │   ├── Pista1.jpeg
    │   ├── Pista2View.jpeg
    │   ├── Pista3.jpeg
    │   └── Pista3Checkpoint.jpeg
    ├── music/
    │   ├── Game Lobby (1).mp3
    │   └── rising tides (1).mp3
    ├── scripts/
    │   ├── Projeto Faculdade dia 13 do 04.rbxl
    │   ├── checkpoint.lua
    │   └── estamina.lua
    └── sounds/
        ├── checkpoint.mp3
        └── policeradio.mp3

---

## 📦 Organização dos Assets

* `images/`: capturas de tela das pistas, menus e pontos de spawn.
* `music/`: trilhas sonoras de ambiente utilizadas no jogo.
* `scripts/`: arquivo principal do mundo Roblox (`.rbxl`) e scripts em Lua (mecânicas de checkpoint e estamina).
* `sounds/`: efeitos sonoros de feedback para as ações do jogador.
* `docs/`: documentação detalhada de design do jogo (GDD) e design sonoro (SDD).

---

## 💡 Observações

* O projeto foi construído e configurado inteiramente na plataforma **Roblox Studio**.
* Os arquivos de código (`.lua`) foram isolados na pasta `scripts` visando facilitar a leitura, avaliação e versionamento através do GitHub.
* Todos os recursos de áudio e efeitos sonoros foram retirados da biblioteca oficial do Roblox.

---

## 🎓 Créditos

Projeto utilizado em contexto educacional para estudo de Game Design, Level Design, lógica de programação e documentação de projetos.
