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

---

## Real Chemistry Lab Mode Proposal for InfinityLab

### 1. **General Objective**

Create a game mode where the player can perform real and simulated chemical experiments, combining reagents and observing real reactions based on true chemical properties, focusing on education and discovery.

---

### 2. **Key Elements of Lab Mode**

a) Real Substance Catalog
* Chemical elements (H, O, Na, Cl, Fe, etc.)
* Common compounds (H2O, NaCl, CO2, Sulfuric acid, etc.)
* Reagents, acids, bases, salts, solvents

b) Physical and Chemical Properties
* Physical states (solid, liquid, gas)
* Solubility
* pH
* Chemical reactivity (acid-base, redox, precipitation)
* Reaction temperature and energy (exothermic/endothermic)

c) Mixing and Reaction System
* Allow the player to combine substances in a virtual beaker or test tube
* Evaluate chemical reactions based on real tables and rules (e.g., acid + base → salt + water)
* Show visual results (color change, gas release, precipitate, temperature, controlled explosion, etc.)

d) Lab Interface
* Workbench with space to manipulate bottles and test tubes
* Tools like pipettes, stirrers, bunsen burner (virtual flame)
* Visual meters: pH meter, thermometer, scale

e) Safety System
* Warnings about dangerous substances
* Consequences for incorrect mixtures (explosions, failures)
* Items to "neutralize" accidents (extinguisher, eyewash)

---

### 3. **Additional Features and Mechanics**

a) Educational Missions and Challenges
* Guided experiments with step-by-step instructions to teach concepts (e.g., titration, neutralization reaction)
* Free challenges for the player to create their own combinations and discover reactions

b) Experiment Log and Database
* History of experiments performed, with reaction descriptions, chemical formulas, visual results, and effects
* "Discovery" system to unlock new reagents or equipment as you progress

c) Integration with Current Sandbox Mode
* Allow exporting lab creations to the sandbox mode, to use real chemical elements in more fantastical combinations
* Or vice versa, use sandbox discoveries to create new reagents for the realistic lab

---

### 4. **Technical Challenges and Considerations**

a) Chemical Simulation
* Create a database with basic chemical reactions to check combinations (rules based on real chemistry)
* Visually model reactions (particles, color change, bubbles, smoke, etc.)

b) Interface and Usability
* Build an accessible and clear UI, especially for users who are not chemistry experts
* Balance between scientific accuracy and fun, to keep the game light and intuitive

c) Performance
* Reactions and simulations should run smoothly, without lag
* Consider using simplified physics and efficient visual effects

---

### 5. **Recommended Technologies and Tools**
* **Flame (Flutter)**: already used in the project, great for 2D and interactive UI
* **Local database** to store compounds and results (SQLite, Hive)
* **Script system** to define reactions and chemical rules, making it easy to add new compounds in the future
* **Custom animations** to represent visual changes in reactions
* **Open chemistry API or database** to obtain real properties and formulas

---

### 6. **Summary of Main Implementation Steps**

a) Set up the new game mode interface and navigation
b) Develop the substance catalog and reaction database
c) Implement the mixing and reaction system
d) Create the lab interface with workbench, tools, and visual meters
e) Develop the safety system and consequences for reactions
f) Implement educational missions and experiment log features
g) Optimize performance and ensure smooth simulations
h) Test with real chemistry data and adjust balance/accuracy
i) Polish visuals, animations, and audio feedback
j) Prepare documentation and tutorials for players
