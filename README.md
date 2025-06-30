# Infinity Lab

Infinity Lab é um jogo sandbox sci-fi de fusão de elementos, desenvolvido em Flutter + Flame, onde você descobre novas combinações arrastando e soltando elementos em uma área de laboratório futurista.

## 🎮 Sobre o Jogo

- Combine elementos base (🔥 Água, 🌬️ Ar, 🌍 Terra, 🔥 Fogo) para descobrir centenas de novas criações.
- Arraste e solte elementos para tentar fusões.
- Inventário visual, log de descobertas e sistema de dicas.
- Visual minimalista inspirado em sci-fi, com glassmorphism e fontes emoji.
- Áudio ambiente e efeitos sonoros.
- Suporte a EN/PT-BR.

## 📦 Estrutura do Projeto

```
lib/
  main.dart
  game/infinity_lab_game.dart
  components/
    element_component.dart
    fusion_area.dart
    inventory_ui.dart
  data/
    fusion_data.dart
    element_model.dart
    save_manager.dart
    localization.dart
  ui/
    menu_overlay.dart
    discovery_log.dart
    theme.dart
  audio/audio_manager.dart
  utils/utils.dart
assets/
  audio/
    fusion_success.ogg
    fusion_denied.ogg
    click.ogg
    ambient.mp3
  fonts/
    NotoEmoji-Regular.ttf
  data/
    fusion_data.json
    localization_en.json
    localization_pt.json
```

## 🚀 Como Rodar

1. Instale as dependências:
   ```bash
   flutter pub get
   ```
2. Rode em qualquer plataforma:
   ```bash
   flutter run -d chrome      # Web
   flutter run -d android     # Android
   flutter run -d ios         # iOS
   flutter run -d windows     # Desktop
   ```

## 🛠️ Funcionalidades

- Drag & drop de elementos com feedback visual/sonoro
- Sistema de save/load automático
- Log de descobertas e busca
- Tema escuro sci-fi responsivo
- Localização EN/PT-BR

## 📄 Roadmap

Veja o progresso e tarefas em [ROADMAP.md](./ROADMAP.md).

## 📢 Contribuição

Pull requests são bem-vindos! Siga o padrão do projeto e descreva bem suas alterações.

## 📜

---

## Proposta detalhada para o Modo Laboratório de Química Real no InfinityLab

### 1. **Objetivo Geral**

Criar um modo de jogo onde o jogador pode realizar experimentos químicos reais e simulados, combinando reagentes, observando reações reais baseadas em propriedades químicas verdadeiras, com foco em educação e descoberta.

---

### 2. **Elementos-Chave do Modo Laboratório**

a) Catálogo de Substâncias Reais
* Elementos químicos (H, O, Na, Cl, Fe, etc.)
* Compostos comuns (H2O, NaCl, CO2, Ácido sulfúrico, etc.)
* Reagentes, ácidos, bases, sais, solventes

b) Propriedades Físicas e Químicas
* Estados físicos (sólido, líquido, gasoso)
* Solubilidade
* pH
* Reatividade química (ácido-base, oxidação-redução, precipitação)
* Temperatura de reação e energia envolvida (exotérmica/endotérmica)

c) Sistema de Mistura e Reação
* Permitir o jogador combinar substâncias em um “béquer” ou tubo de ensaio virtual
* Avaliar as reações químicas com base em tabelas e regras reais (exemplo: ácido + base → sal + água)
* Mostrar resultados visuais (mudança de cor, liberação de gás, precipitado, temperatura, explosão controlada etc.)

d) Interface de Laboratório
* Bancada com espaço para manipular frascos e tubos de ensaio
* Ferramentas como pipetas, agitadores, bunsen (fogo virtual)
* Medidores visuais: pHmetro, termômetro, balança

e) Sistema de Segurança
* Avisos sobre substâncias perigosas
* Consequências para misturas incorretas (explosões, falhas)
* Itens para “neutralizar” acidentes (extintor, lava-olhos)

---

### 3. **Funcionalidades e Mecânicas Adicionais**

a) Missões Educativas e Desafios
* Experimentos guiados com passo a passo para ensinar conceitos (ex: titulação, reação de neutralização)
* Desafios livres para o jogador criar suas próprias combinações e descobrir reações

b) Registro e Banco de Dados de Experimentos
* Histórico dos experimentos realizados, com descrição das reações, fórmulas químicas, resultados visuais e efeitos
* Sistema de “descoberta” para desbloquear novos reagentes ou equipamentos ao progredir

c) Integração com Modo Sandbox Atual
* Permitir exportar criações do laboratório para o modo sandbox, para usar elementos químicos reais em combinações mais fantasiosas
* Ou vice-versa, usar descobertas do modo sandbox para criar reagentes novos para o laboratório realista

---

### 4. **Desafios Técnicos e Considerações**

a) Simulação Química
* Criar uma base de dados com as reações químicas básicas para verificar combinações (regras baseadas em química real)
* Modelar visualmente reações (partículas, mudança de cor, liberação de bolhas, fumaça etc.)

b) Interface e Usabilidade
* Construir uma UI acessível e clara, especialmente para usuários que não são especialistas em química
* Balancear entre precisão científica e diversão, para manter o jogo leve e intuitivo

c) Performance
* Reações e simulações devem rodar fluidamente, sem atrasos
* Considerar uso de física simplificada e efeitos visuais eficientes

---

### 5. **Tecnologias e Ferramentas Recomendadas**
* **Flame (Flutter)**: já usado no projeto, ótimo para 2D e interface interativa
* **Banco de dados local** para armazenar compostos e resultados (SQLite, Hive)
* **Sistema de scripts** para definir reações e regras químicas, facilitando adição futura de novos compostos
* **Animações customizadas** para representar mudanças visuais das reações
* **API ou base de dados química** (aberta) para obter propriedades reais e fórmulas

---

### 6. **Resumo das Principais Etapas para Implementação**

1. Pesquisa e definição do escopo das reações químicas e substâncias a serem incluídas
2. Criação da estrutura de dados para armazenar informações de elementos, compostos e reações
3. Desenvolvimento do sistema de mistura e reação, com validação das regras químicas
4. Implementação da interface do usuário para o modo laboratório, incluindo bancada, ferramentas e medidores
5. Criação do sistema de missões e desafios educativos
6. Testes de usabilidade e ajuste de performance
7. Documentação e preparação para lançamento da nova funcionalidade
