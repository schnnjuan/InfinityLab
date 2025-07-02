
<!-- INFINITY LAB README -->

<div align="center">

<img src="https://i.imgur.com/2T4YJ1L.png" alt="Infinity Lab Header">

[![Platform](https://img.shields.io/badge/platform-Flutter%20%7C%20Flame-blue)]()
[![License](https://img.shields.io/github/license/schnnjuan/InfinityLab?style=flat-square)]()
[![Specter Studios](https://img.shields.io/badge/made%20by-Specter%20Studios-black)]()

### 🔭 Discover. 🔬 Combine. 🧪 Create.
_A sandbox for element fusion with a minimalist sci-fi aesthetic and chemical realism._

</div>

---

<div align="center">
<img src="https://i.imgur.com/8i9b6Jb.png" alt="About the Game">
</div>

**Infinity Lab** is a 2D _drag-and-drop_ game where the player explores a futuristic digital laboratory to discover **hundreds of elements and chemical reactions**, blending fantasy and real science.
> It all starts with the four basic elements: **🌊 Water**, **🔥 Fire**, **🌍 Earth**, **💨 Air**.

> By combining them, the player unlocks new compounds, objects, and phenomena, from **mud** to **steam**, from **electricity** to **life**.

---

<div align="center">
<img src="https://i.imgur.com/pQf8RzQ.png" alt="Core Mechanics">
</div>

### 🧪 Element Fusion
Rule-based JSON combination system, supporting thousands of unique fusions, recursive and reactive fusion, plus visual (particles), sound, and textual feedback.

```ascii
     🌊         🔥
    Water   +  Fire  →   💨 Steam
```

### 🧰 Inventory and Interface
Fluid Drag & Drop with touch/mouse, minimalist side panel, discovery history, and well-defined categories (gas, mineral, living, fictional, etc.).

### 🔬 Laboratory Mode
Real chemical reactions with ⚗️ test tubes and 🔬 physical properties. Use equipment like Bunsen burner, stirrer, pH meter, and thermometer to create mixtures and learn from controlled explosions.

---

<div align="center">
<img src="https://i.imgur.com/x0c4t7B.png" alt="Project Structure">
</div>

```bash
InfinityLab/
│
├── lib/
│   ├── main.dart
│   ├── engine/              # Fusion engine
│   ├── models/              # Element structure
│   ├── ui/                  # Visual interface (Flutter widgets)
│   └── services/            # Saving, state, etc.
│
├── assets/
│   ├── audio/
│   ├── images/
│   └── data/
│       └── elements.json
│
└── README.md
```

---

<div align="center">
<img src="https://i.imgur.com/fN7wK9k.png" alt="Fusion Example">
</div>

| 🔹 Element A | 🔸 Element B | ⚛️ Result | Category   |
| ------------- | ------------- | --------- | ---------- |
| Water         | Fire          | Steam     | Gas        |
| Air           | Water         | Rain      | Phenomenon |
| Earth         | Rain          | Mud       | Mineral    |
| Mud           | Fire          | Brick     | Building   |
| Fire          | Metal         | Electricity | Energy     |
| Electricity   | Life          | Robot     | Artificial |

> All fusions are **dynamic**, configured by `.json` files, with AI support and procedural expansion.

---

<div align="center">
<img src="https://i.imgur.com/sW9tE2R.png" alt="Roadmap">
</div>

| Version | Description                    | Status         |
| ------- | ------------------------------ | -------------- |
| `v0.1`  | Functional sandbox prototype   | ✅ Completed    |
| `v0.5`  | Interactive chemical laboratory | 🔄 In progress |
| `v1.0`  | Launch with campaign mode      | ⏳ Planned      |
| `v1.1+` | Multiplayer, modding, AI       | 🧠 Research    |

---

<div align="center">
<img src="https://i.imgur.com/mZ3yH5G.png" alt="Technical Architecture">
</div>

| Component             | Technology            |
| --------------------- | --------------------- |
| Main Engine           | Flutter + Flame       |
| Language              | Dart                  |
| Backend (optional)    | Supabase              |
| Local Storage         | Hive / SQLite         |
| Animations and Sprites | Flame (particles, fx) |
| Data Structure        | Modular JSON          |
| Cross-platform Build  | Web, Android, iOS     |

---

<div align="center">
<img src="https://i.imgur.com/aO7rV6F.png" alt="Contribution">
</div>

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/schnnjuan/InfinityLab.git
    ```
2.  **Create a branch:**
    ```bash
    git checkout -b feature/your-feature
    ```
3.  **After changes, commit and push:**
    ```bash
    git commit -m "feat: your contribution"
    git push origin feature/your-feature
    ```
4.  **Open a Pull Request!**

> Questions? See [CONTRIBUTING.md](./CONTRIBUTING.md)

---

<div align="center">
<img src="https://i.imgur.com/uV8xN3D.png" alt="Future Vision">
</div>

*   **🔁 AI** for automatic fusion generation.
*   **⚙️ Modding system** via YAML or JSON files.
*   **🧬 Visual element editor.**
*   **🌐 Collaborative multiplayer laboratory.**
*   **📊 Internal analytics dashboard** for balancing.
*   **🧪 Educational quiz** and integration with formal education.

---

<div align="center">

*Developed with 💡 by [Specter Studios](https://github.com/schnnjuan)*
<br>
_Minimalism, science, and interactivity._

</div>