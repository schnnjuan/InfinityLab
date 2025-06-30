# Infinity Lab

Infinity Lab is a sci-fi sandbox fusion game developed in Flutter + Flame, where you discover new combinations by dragging and dropping elements in a futuristic laboratory area.

## 🎮 About the Game

- Combine base elements (💧 Water, 🌬️ Air, 🌍 Earth, 🔥 Fire) to discover hundreds of new creations.
- Drag and drop elements to attempt fusions.
- Visual inventory, discovery log, and hint system.
- Minimalist sci-fi inspired visuals, with glassmorphism and emoji fonts.
- Ambient audio and sound effects.
- EN/PT-BR language support.

## 📦 Project Structure

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

## 🚀 How to Run

1. Install dependencies:
   ```bash
   flutter pub get
   ```
2. Run on any platform:
   ```bash
   flutter run -d chrome      # Web
   flutter run -d android     # Android
   flutter run -d ios         # iOS
   flutter run -d windows     # Desktop
   ```

## 🛠️ Features

- Drag & drop elements with visual/audio feedback
- Automatic save/load system
- Discovery log and search
- Responsive sci-fi dark theme
- EN/PT-BR localization

## 📄 Roadmap

See progress and tasks in [ROADMAP.md](./ROADMAP.md).

## 📢 Contribution

Pull requests are welcome! Please follow the project standards and describe your changes clearly.

## 📜
