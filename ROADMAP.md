# Infinity Lab - MVP Roadmap

## 1. Estrutura Inicial do Projeto

- [x] Criar projeto Flutter com Flame.
- [ ] Configurar assets (audio, fontes, dados).
- [x] Definir estrutura de pastas conforme especificação.

## 2. Modelos e Dados

- [ ] `element_model.dart`: Modelar classe `Element`.
- [ ] `fusion_data.dart`: Implementar lógica de fusão baseada em JSON.
- [ ] `save_manager.dart`: Sistema de save/load (SharedPreferences/local file).
- [ ] `localization.dart`: Suporte a EN/PT-BR via JSON.

## 3. Componentes Visuais

- [ ] `element_component.dart`: Elemento arrastável (emoji, glassmorphism).
- [ ] `fusion_area.dart`: Área de fusão (DragTarget).
- [ ] `inventory_ui.dart`: Inventário visual (grid/lista, sem duplicatas).

## 4. Lógica do Jogo

- [ ] `infinity_lab_game.dart`: Subclasse de `FlameGame`, lógica principal.
- [ ] Implementar drag & drop entre elementos e área de fusão.
- [ ] Checar fusão válida/negada, feedback visual/sonoro.
- [ ] Adicionar novo elemento ao inventário se fusão for válida.

## 5. UI & Overlays

- [ ] `menu_overlay.dart`: Overlay de menu, configurações e tutorial.
- [ ] `discovery_log.dart`: Log de descobertas, scrollável, busca opcional.
- [ ] `theme.dart`: Tema sci-fi minimalista (dark, glass, glow, fontes emoji).
- [ ] Layout responsivo com `LayoutBuilder`.

## 6. Áudio

- [ ] `audio_manager.dart`: Gerenciar sons (fusão, erro, UI, música ambiente).
- [ ] Integrar assets de áudio (.ogg/.mp3).

## 7. Localização

- [ ] Implementar troca de idioma (EN/PT-BR) em toda UI.
- [ ] Carregar strings de arquivos JSON.

## 8. Performance

- [ ] Lazy load de dados e assets.
- [ ] Garantir 60 FPS e startup <1s.

## 9. Extras/Opcionais

- [ ] AI Suggestion Stub: Sugerir fusões não tentadas.
- [ ] Animações extras (glass, partículas, etc).

## 10. Testes & Build

- [ ] Testar em Android, iOS, Web e Desktop.
- [ ] Ajustar responsividade e UX em cada plataforma.

---

## Checklist de Entrega

- [ ] Jogo jogável do início ao fim.
- [ ] Save/load funcionando.
- [ ] UI polida e responsiva.
- [ ] Áudio e localização integrados.
- [ ] Builda com `flutter run` em todas as plataformas.

---