# Infinity Lab

Infinity Lab is a sci-fi sandbox fusion game where players interact in a futuristic laboratory to discover, combine, and create hundreds (or thousands) of new elements, substances, objects, and phenomena. Using an intuitive drag-and-drop mechanic, players experiment with fusions and chemical reactions ranging from basic elements to complex compounds, with an extra layer of realism in the real chemistry lab mode, simulating scientific reactions based on real data.

The game combines exploration, creativity, education, and fun in an accessible experience for all audiences, with modern interfaces, minimalist sci-fi visuals, and immersive soundscapes.

---

## 1. Target Audience

* Casual gamers and fans of creative sandbox games
* Students and educators interested in chemistry and natural sciences
* General audience interested in discovery, crafting, and simulation games
* Mobile, web, and desktop platforms

---

## 2. Development Platforms

* Mobile: Android and iOS (Flutter with Flame)
* Desktop: Windows (Flutter Desktop)
* Web: Modern browsers (Flutter Web)

---

## 3. Core Mechanics and Systems

### 3.1 Core Fusion System

* **Initial base elements:** Water, Air, Earth, Fire (emoji symbols for intuitiveness)
* **Element creation:** Combine two or more elements to generate new ones (e.g., water + fire = steam)
* **Rules system:** Configurable combination table via JSON/script data, supporting multi-step fusions
* **Feedback:** Visual (particles, animations), audio, and textual feedback for success or failure
* **Combination limit:** Flexible to support hundreds to thousands of created items

### 3.2 Inventory and Management

* Visual inventory interface to view available elements
* Discovery log with filters and search
* Tag and category system for organization (e.g., organic, minerals, gases)
* Option for users to rename elements

### 3.3 Real Chemistry Lab Mode (Core Extension)

* Catalog of real chemical elements (H, C, O, N, P, S, Ca, K, Na, Cl, Mg)
* Real properties: physical states, solubility, pH, energy, chemical bond types
* Mixing system on a workbench with virtual beakers and test tubes
* Reaction validation based on chemical rules (acid-base, precipitation, oxidation)
* Interactive tools: pipettes, stirrers, virtual bunsen, meters (pH, thermometer, scale)
* Safety system: alerts for dangerous mixtures, simulated explosions, neutralization
* Detailed experiment log with formulas, visual results, and progressive unlocking

### 3.4 Missions and Challenges System

* Progressive tutorial missions to teach fusion and chemistry basics
* Free challenges to create specific combinations or solve problems (e.g., neutralize acid)
* Reward system: unlock new elements, tools, and visuals

### 3.5 Progression and Discovery System

* Automatic log of discovered combinations
* Achievements/trophies system
* Progressive unlocking based on scientific advances and achievements

### 3.6 Interface and UX System

* Minimalist main interface with glassmorphism and sci-fi design
* Intuitive drag & drop, supporting touch and mouse
* Modular/adaptable panels (inventory, database, workbench, missions)
* Multilingual system (EN/PT-BR initially)
* Dark theme support and responsive layout

### 3.7 Audio System

* Ambient sci-fi music
* Sound effects for interactions, fusion/reaction success/failure
* Volume and mute controls

---

## 4. Technical Aspects

### 4.1 Framework and Languages

* **Flutter + Flame:** main development for 2D multiplatform, UI, and game logic
* **Dart:** language for all game logic and interface

### 4.2 Data Structure

* **JSON/Hive/SQLite:** for storing elements, reactions, progress, and settings
* Data structures for elements with chemical, visual, and sound properties
* Simple scripting system to add/edit fusion rules without recompiling

### 4.3 Rendering and Animations

* Use of Flame for sprites, animations, and custom particles
* Visual effects for reactions: color change, smoke, fire, bubbles, precipitates

### 4.4 Saving and Loading

* Automatic and manual save of player progress
* Cloud backup (optional, future integration)
* Multiple profile system

### 4.5 Performance and Optimization

* Continuous testing to ensure smoothness on modest mobile devices
* Efficient memory and processing use for effects and logic
* UI and response optimization for a responsive UX

---

## 5. User Interface and Experience (UI/UX)

### 5.1 Main Screen

* Central area for experimentation and fusion, with space to drop elements
* Side/bottom bar with inventory and available elements
* Buttons to access discovery log, settings, tutorial, and lab mode

### 5.2 Lab Workbench

* Virtual table with space for multiple beakers and test tubes
* Lab tools available via menu (pipettes, bunsen, stirrers)
* Digital meters for pH, temperature, weight, and volume
* Visual safety indicators (e.g., dangerous reagent levels)

### 5.3 Discovery Log

* Chronological list of all fusions and reactions performed
* Option to view details and chemical formulas
* Search and filter by category

### 5.4 Hints and Help System

* Contextual hints during experimentation
* Step-by-step tutorial with "learn by playing" mode
* FAQ and educational section about chemistry in the lab

---

## 6. Audio and Music

* Soft sci-fi ambient soundtrack, adaptive to different situations
* Manipulation sounds (clicks, drag, drop)
* Chemical reaction sounds (bubbling, sparks, light explosions)
* Audio customization options in the menu

---

## 📄 Roadmap

See progress and tasks in [ROADMAP_en.md](./ROADMAP_en.md).

---


## Final Summary

**Infinity Lab** is an ambitious project that unites creativity, science, and technology to offer an innovative and educational sandbox. With modular systems, an intuitive interface, and a focus on fun and learning, the game has the potential to captivate a wide audience, from casual gamers to students and educators. The presented roadmap and structure ensure clarity for efficient and scalable development.

---

## 🌟 Future Vision and Expansion Possibilities

- **AI in Sandbox:** Suggest fusions based on player history and allow procedural recipe generation.
- **Modding:** Plugins and JSON/YAML files for users to create new fusions.
- **Advanced Lab:** Integration with open chemical APIs, realistic visual effects, and molecular structure panel.
- **Analytics:** Internal telemetry and admin panel for dynamic balancing.
- **Online/Multiplayer:** Real-time collaborative lab, fusion sharing, and leaderboards.
- **Education:** Thematic learning tracks, quizzes, certification, and integration with educational platforms.
- **Internal Editor:** Visual tool to modify and export elements, fusions, and reactions.

For full details and suggestions, see also [ROADMAP_en.md](./ROADMAP_en.md).
