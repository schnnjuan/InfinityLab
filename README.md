
<!-- INFINITY LAB README -->

<div align="center">

<img src="https://i.imgur.com/2T4YJ1L.png" alt="Infinity Lab Header">

[![Platform](https://img.shields.io/badge/platform-Flutter%20%7C%20Flame-blue)]()
[![License](https://img.shields.io/github/license/schnnjuan/InfinityLab?style=flat-square)]()
[![Specter Studios](https://imgur.com/a/lq61ixg)]()

### 🔭 Descubra. 🔬 Combine. 🧪 Crie.
_Um sandbox de fusão de elementos com uma estética sci-fi minimalista e realismo químico._

</div>

---

<div align="center">
<img src="https://imgur.com/a/6JnCZEt" alt="Sobre o Jogo">
</div>

**Infinity Lab** é um jogo 2D de _arrastar e soltar_ onde o jogador explora um laboratório digital futurista para descobrir **centenas de elementos e reações químicas**, mesclando fantasia e ciência real.
> Tudo começa com os quatro elementos básicos: **🌊 Água**, **🔥 Fogo**, **🌍 Terra**, **💨 Ar**.

> Combinando-os, o jogador desbloqueia novos compostos, objetos e fenômenos, de **lama** a **vapor**, de **eletricidade** a **vida**.

---


### 🧪 Fusão de Elementos
Sistema baseado em regras de combinação JSON, com suporte a milhares de fusões únicas, fusão recursiva e reativa, além de feedback visual (partículas), sonoro e textual.

```ascii
     🌊         🔥
    Water   +  Fire  →   💨 Steam
```

### 🧰 Inventário e Interface
Drag & Drop fluido com toque/mouse, painel lateral minimalista, histórico de descobertas e categorias bem definidas (gás, mineral, vivo, ficcional, etc.).

### 🔬 Modo Laboratório
Reações químicas reais com ⚗️ tubos de ensaio e 🔬 propriedades físicas. Use equipamentos como bico de Bunsen, agitador, pHmetro e termômetro para criar misturas e aprender com explosões controladas.

---


```bash
InfinityLab/
│
├── lib/
│   ├── main.dart
│   ├── engine/              # Motor de fusão
│   ├── models/              # Estrutura dos elementos
│   ├── ui/                  # Interface visual (Flutter widgets)
│   └── services/            # Salvamento, estado, etc.
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



| 🔹 Elemento A | 🔸 Elemento B | ⚛️ Resultado | Categoria  |
| ------------- | ------------- | ------------ | ---------- |
| Água          | Fogo          | Vapor        | Gás        |
| Ar            | Água          | Chuva        | Fenômeno   |
| Terra         | Chuva         | Lama         | Mineral    |
| Lama          | Fogo          | Tijolo       | Construção |
| Fogo          | Metal         | Eletricidade | Energia    |
| Eletricidade  | Vida          | Robô         | Artificial |

> Todas as fusões são **dinâmicas**, configuradas por arquivos `.json`, com suporte a IA e expansão procedural.

---


| Versão  | Descrição                      | Status          |
| ------- | ------------------------------ | --------------- |
| `v0.1`  | Protótipo sandbox funcional    | ✅ Concluído     |
| `v0.5`  | Laboratório químico interativo | 🔄 Em andamento |
| `v1.0`  | Lançamento com modo campanha   | ⏳ Planejado     |
| `v1.1+` | Multiplayer, modding, IA       | 🧠 Pesquisa     |

---



| Componente            | Tecnologia            |
| --------------------- | --------------------- |
| Engine Principal      | Flutter + Flame       |
| Linguagem             | Dart                  |
| Backend (opcional)    | Supabase              |
| Armazenamento local   | Hive / SQLite         |
| Animações e Sprites   | Flame (particles, fx) |
| Estrutura de Dados    | JSON modular          |
| Build multiplataforma | Web, Android, iOS     |

---



1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/schnnjuan/InfinityLab.git
    ```
2.  **Crie uma branch:**
    ```bash
    git checkout -b feature/sua-feature
    ```
3.  **Após as alterações, faça o commit e o push:**
    ```bash
    git commit -m "feat: sua contribuição"
    git push origin feature/sua-feature
    ```
4.  **Abra um Pull Request!**

> Dúvidas? Veja [CONTRIBUTING.md](./CONTRIBUTING.md)

---



*   **🔁 IA** para gerar fusões automaticamente.
*   **⚙️ Sistema de modding** via arquivos YAML ou JSON.
*   **🧬 Editor visual** de elementos.
*   **🌐 Laboratório multiplayer** colaborativo.
*   **📊 Painel de analytics** interno para balanceamento.
*   **🧪 Quiz educativo** e integração com ensino formal.

---

<div align="center">

*Desenvolvido com 💡 por [Specter Studios](https://github.com/schnnjuan)*
<br>
_Minimalismo, ciência e interatividade._

</div>