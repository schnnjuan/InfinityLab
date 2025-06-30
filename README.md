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
