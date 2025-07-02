
<!-- INFINITY LAB README -->
<div align="center">

### 🔭 Discover. 🔬 Combine. 🧪 Create.
_A sandbox for element fusion with a minimalist sci-fi aesthetic and chemical realism._

</div

---

**Infinity Lab** is a 2D _drag-and-drop_ game where the player explores a futuristic digital laboratory to discover **hundreds of elements and chemical reactions**, blending fantasy and real science.
> It all starts with the four basic elements: **🌊 Water**, **🔥 Fire**, **🌍 Earth**, **💨 Air**.

> By combining them, the player unlocks new compounds, objects, and phenomena, from **mud** to **steam**, from **electricity** to **life**.

---

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



| Version | Description                    | Status         |
| ------- | ------------------------------ | -------------- |
| `v0.1`  | Functional sandbox prototype   | ✅ Completed    |
| `v0.5`  | Interactive chemical laboratory | 🔄 In progress |
| `v1.0`  | Launch with campaign mode      | ⏳ Planned      |
| `v1.1+` | Multiplayer, modding, AI       | 🧠 Research    |

---



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