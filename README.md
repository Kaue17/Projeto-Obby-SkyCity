# Obby - SkyCity

Projeto acadêmico de um jogo do gênero Obby (Obstacle Course) desenvolvido na plataforma Roblox Studio. O projeto faz parte da disciplina de Design de Jogos do curso de Sistemas de Informação da UPIS.

## Documentação do projeto

- [GDD - Game Design Document](docs/GDD%20-%20Documento.docx)
- [SDD - Sound Design Document](docs/SDD%20-%20Sound%20Design%20Document.docx)

## Visão geral

O jogo se passa em uma cidade futurista onde foi criado um grande circuito de obstáculos para testar as habilidades dos participantes. A cidade foi transformada em um ambiente de desafios tecnológicos, com estruturas elevadas e plataformas suspensas no ar, criando um percurso extremo. O jogador deve atravessar esse percurso, o que exige precisão, coordenação e paciência para avançar entre as plataformas e chegar ao final.

## Principais funcionalidades

- **Plataforma baseada em habilidade:** progressão com dificuldade crescente.
- **Estética Futurista:** cenário de cidade neon à noite.
- **Design de Nível Aéreo:** percursos no céu com plataformas flutuantes e mistura de ambientes urbanos e aéreos.
- **Sistema de Checkpoints:** garante a progressão segura do jogador.
- **Desafios Variados:** focado em salto e equilíbrio, contando com plataformas de salto, caminhos estreitos e obstáculos fixos e móveis.
- **Ponto de Referência Visual:** presença de uma torre central inspirada na Torre Eiffel.

## Tecnologias utilizadas

- **Roblox Studio**
- **Linguagem Lua**

## Como executar

1. Certifique-se de ter o **Roblox Studio** instalado em sua máquina.
2. Clone este repositório ou baixe os arquivos.
3. Navegue até a pasta `scripts` e abra o arquivo `Projeto Faculdade dia 13 do 04.rbxl` diretamente no Roblox Studio.
4. Pressione **F5** ou clique em **Jogar** para iniciar o teste do percurso.

## Controles

- **W A S D:** movimentam o personagem.
- **Barra de espaço:** pula.
- **Shift Esquerdo (segurar):** correr (sprint).
- **Mouse (Botão Direito):** controla a rotação da câmera.

## Regras do jogo

- O objetivo é completar o percurso para provar sua capacidade.
- O maior desafio é que o jogador pode cair ao errar os saltos ou perder o equilíbrio durante o percurso.
- Em caso de queda, o jogador pode recomeçar a partir do último checkpoint salvo.
- A chave para a vitória é melhorar a precisão nos movimentos e repetir os desafios até conseguir avançar.

## Estrutura do projeto

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

## Organização dos assets

- `images/`: capturas de tela das pistas, menus e pontos de spawn;
- `music/`: trilhas sonoras de ambiente utilizadas no jogo;
- `scripts/`: arquivo principal do mundo Roblox (`.rbxl`) e scripts em Lua (mecânicas de checkpoint e estamina);
- `sounds/`: efeitos sonoros de feedback para as ações do jogador;
- `docs/`: documentação detalhada de design do jogo (GDD) e design sonoro (SDD).

## Equipe e Funções

O projeto foi desenvolvido sob a orientação do docente Rodrigo de Carvalho, com a seguinte divisão técnica:

- **Game Design / Direção Geral:** João Luís
- **Programação / Lógica de Jogo:** João Luís, Kauê, João Pedro e Pedro
- **Arte / Pixel Art / Cenários:** João Luís e Kauê
- **Trilha Sonora / Efeitos:** Kauê
- **Pesquisa / Avaliação de Impacto:** João Pedro, João Luís, Kauê, Yasmin, Pedro e Alisson

**Integrantes:**
- Quézia Sales da Silva
- Yasmin Liberato Schoellkopf
- Kauê Albuquerque Jardim Pinheiro
- João Pedro Ferreira Vitalino
- João Luís Rolim Benedicto
- Pedro Lopes
- Alisson Costa

## Observações

- O projeto foi construído e configurado inteiramente na plataforma **Roblox Studio**.
- Os arquivos de código (`.lua`) foram isolados na pasta `scripts` visando facilitar a leitura, avaliação e versionamento através do GitHub.
- Todos os recursos de áudio e efeitos sonoros foram retirados da biblioteca oficial do Roblox.

## Créditos

Projeto utilizado em contexto educacional para estudo de Game Design, Level Design, lógica de programação e documentação de projetos.
