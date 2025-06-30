# Infinity Lab

Infinity Lab é um jogo sandbox sci-fi de fusão de elementos, onde o jogador interage em um laboratório futurista para descobrir, combinar e criar centenas (ou milhares) de novos elementos, substâncias, objetos e fenômenos. Utilizando uma mecânica intuitiva de arrastar e soltar, o jogador experimenta fusões e reações químicas que vão desde simples elementos básicos até compostos complexos, com uma camada extra de realismo no modo laboratório de química real, que simula reações científicas com base em dados reais.

O jogo combina exploração, criatividade, educação e diversão em uma experiência acessível para todos os públicos, com interfaces modernas, visuais minimalistas sci-fi e ambientação sonora imersiva.

---

## 1. Público-Alvo

* Jogadores casuais e fãs de jogos sandbox criativos.
* Estudantes e educadores interessados em química e ciências naturais.
* Público geral interessado em jogos de descoberta, crafting e simulação.
* Plataformas mobile, web e desktop.

---

## 2. Plataformas de Desenvolvimento

* Mobile: Android e iOS (Flutter com Flame)
* Desktop: Windows (Flutter Desktop)
* Web: navegadores modernos (Flutter Web)

---

## 3. Mecânicas e Sistemas Principais

### 3.1 Sistema de Combinação (Core Fusion)

* **Elementos base iniciais:** Água, Ar, Terra, Fogo (símbolos emoji para intuitividade)
* **Criação de elementos:** Combinação de dois ou mais elementos para gerar novos (ex: água + fogo = vapor)
* **Sistema de regras:** Tabela de combinações configurável via dados JSON/script, com suporte a múltiplas etapas de fusão
* **Feedback:** Feedback visual (partículas, animações), sonoro e textual para sucesso ou falha
* **Limite de combinações:** Flexível para suportar centenas a milhares de itens criados

### 3.2 Inventário e Gerenciamento

* Interface visual de inventário para visualizar elementos disponíveis
* Histórico de descobertas, com filtros e buscas
* Sistema de tags e categorias para organização (ex: orgânicos, minerais, gases)
* Possibilidade de renomear elementos pelo usuário

### 3.3 Modo Laboratório de Química Real (Extensão do Core)

* Catálogo de elementos químicos reais (H, C, O, N, P, S, Ca, K, Na, Cl, Mg)
* Propriedades reais: estados físicos, solubilidade, pH, energia, tipos de ligação química
* Sistema de mistura em bancada com béqueres e tubos de ensaio virtuais
* Validação de reações com base em regras químicas (ácido-base, precipitação, oxidação)
* Ferramentas interativas: pipetas, agitadores, bunsen virtual, medidores (pHmetro, termômetro, balança)
* Sistema de segurança: alertas para misturas perigosas, explosões simuladas, neutralização
* Registro detalhado de experimentos com fórmulas, resultados visuais e desbloqueio progressivo

### 3.4 Sistema de Missões e Desafios

* Missões tutoriais progressivas para ensinar o funcionamento e conceitos básicos de fusão e química
* Desafios livres para criar combinações específicas ou solucionar problemas (ex: neutralizar ácido)
* Sistema de recompensas: desbloqueio de novos elementos, ferramentas e visuais

### 3.5 Sistema de Progresso e Descoberta

* Registro automático das combinações descobertas
* Sistema de achievements/troféus
* Sistema de desbloqueio progressivo baseado em avanços científicos e conquistas

### 3.6 Sistema de Interface e UX

* Interface principal minimalista com glassmorphism e design sci-fi
* Drag & drop intuitivo, com suporte a toque e mouse
* Painéis modulares e adaptáveis (inventário, banco de dados, bancada, missões)
* Sistema multilíngue (EN/PT-BR inicial)
* Suporte a tema escuro e responsividade para diferentes resoluções

### 3.7 Sistema de Áudio

* Música ambiente ambiental sci-fi
* Efeitos sonoros para interações, sucesso/falha em fusões e reações químicas
* Configurações para controle de volume e mute

---

## 4. Aspectos Técnicos

### 4.1 Framework e Linguagens

* **Flutter + Flame:** desenvolvimento principal para multi-plataforma 2D, UI e lógica do jogo
* **Dart:** linguagem para toda a lógica do jogo e interface

### 4.2 Estrutura de Dados

* **JSON/Hive/SQLite:** para armazenamento de elementos, reações, progresso e configurações
* Estruturas de dados para elementos com propriedades químicas, visuais e sons associados
* Sistema de scripts simples para adicionar ou editar regras de fusão sem recompilar o jogo

### 4.3 Renderização e Animações

* Uso do Flame para sprites, animações e partículas customizadas
* Efeitos visuais para reações: mudança de cor, fumaça, fogo, bolhas, precipitados

### 4.4 Salvamento e Carregamento

* Save automático e manual do progresso do jogador
* Backup em nuvem (opcional, via integração futura)
* Sistema de múltiplos perfis

### 4.5 Performance e Otimização

* Testes contínuos para garantir fluidez em dispositivos móveis mais modestos
* Uso eficiente de memória e processamento para efeitos e lógica
* Otimização da interface e respostas para UX responsiva

---

## 5. Interface e Experiência do Usuário (UI/UX)

### 5.1 Tela Principal

* Área central para experimentação e fusão, com espaço para soltar elementos
* Barra lateral/inferior com inventário e elementos disponíveis
* Botões para acessar log de descobertas, configurações, tutorial e modo laboratório

### 5.2 Bancada do Laboratório

* Mesa virtual com espaço para múltiplos béqueres e tubos de ensaio
* Ferramentas de laboratório disponíveis via menu (pipetas, bunsen, agitadores)
* Medidores digitais para pH, temperatura, peso e volume
* Indicadores visuais de segurança (ex: níveis perigosos de reagentes)

### 5.3 Log de Descobertas

* Listagem cronológica de todas as fusões e reações feitas
* Opção para visualizar detalhes e fórmulas químicas
* Função de busca e filtro por categoria

### 5.4 Sistema de Dicas e Ajuda

* Dicas contextuais automáticas durante experimentação
* Tutorial passo a passo com modo “aprenda jogando”
* FAQ e seção educativa sobre química no laboratório

---

## 6. Áudio e Música

* Trilha sonora ambiente sci-fi suave, adaptativa para diferentes situações
* Sons de manipulação (cliques, arrastar, soltar)
* Sons de reações químicas (borbulhar, faíscas, explosões leves)
* Opções de personalização de áudio no menu

---

## 📄 Roadmap

Veja o progresso e tarefas em [ROADMAP.md](./ROADMAP.md).

---


## Resumo Final

**Infinity Lab** é um projeto ambicioso que une criatividade, ciência e tecnologia para oferecer um sandbox inovador e educativo. Com sistemas modulares, interface intuitiva e foco na diversão e aprendizado, o jogo tem potencial para cativar um público amplo, desde jogadores casuais até estudantes e educadores. O roadmap e estrutura apresentados garantem clareza para desenvolvimento eficiente e escalável.
