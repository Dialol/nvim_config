# Neovim Configuration

Этот файл конфигурации Neovim настроен для улучшения производительности и удобства использования. Он включает в себя различные плагины и сопоставления клавиш для повышения эффективности работы.

## Основные настройки

### Общие настройки

- **Использование системного буфера обмена**: Включено для удобного копирования и вставки между Neovim и другими приложениями.
- **Сокращение вывода сообщений**: Убираются лишние символы в сообщениях Vim.
- **Пробелы вместо табуляции**: Вставка пробелов вместо символов табуляции.
- **Отступы и табуляция**: Настроены на 4 пробела для удобства чтения и редактирования кода.
- **Автоматические отступы**: Включено для автоматического добавления отступов в коде.
- **Нумерация строк**: Включена для удобства навигации по коду.
- **Относительная нумерация строк**: Помогает быстро ориентироваться в коде.
- **Отключение автоматической загрузки плагинов**: Для определенных типов файлов.
- **Форматирование текста**: Настроено для удобного редактирования.
- **Скрытие текущего режима**: Отключено отображение текущего режима (например, -- ВСТАВКА --).
- **Время ожидания перед сохранением свап-файла**: Установлено на 100 миллисекунд.
- **Столбец знаков**: Всегда показывается для отображения значков Git и других индикаторов.
- **Прокрутка**: Настроена для отображения минимум 8 строк сверху и снизу.
- **Перенос строк**: Отключен перенос длинных строк на следующую строку.
- **Виртуальное редактирование**: Разрешено редактирование в "виртуальных" позициях.
- **Поддержка отмены изменений**: Включена для отмены изменений между сеансами.
- **Оболочка по умолчанию**: Используется zsh.
- **Поддержка мыши**: Включена для удобства навигации.
- **Фокус окна при наведении мыши**: Включено для удобства работы с окнами.

### Цветовая схема

- **Kanagawa**: Используется цветовая схема Kanagawa с настройками для подчеркивания, комментариев, ключевых слов и других элементов.
- **Тема**: Установлена тема "wave" для темного фона и "lotus" для светлого.

### Установка lazy.nvim

Lazy.nvim используется для управления плагинами. Установка производится при первом запуске, если он еще не установлен.

```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob\:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp\:prepend(lazypath)

## Плагины

### Установка плагинов

Плагины устанавливаются с помощью `lazy.nvim`. Вот список используемых плагинов:

- **hop.nvim**: Плагин для быстрого перемещения по тексту.
- **nvim-treesitter**: Плагин для улучшения подсветки синтаксиса и навигации.
- **nvim-lspconfig**: Конфигурация для Language Server Protocol (LSP).
- **mason.nvim**: Менеджер для установки и управления LSP серверами.
- **mason-lspconfig.nvim**: Интеграция Mason с nvim-lspconfig.
- **nvim-cmp**: Плагин для автодополнения.
- **cmp-nvim-lsp**: Источник автодополнения для nvim-cmp.
- **LuaSnip**: Плагин для работы со сниппетами.
- **cmp_luasnip**: Интеграция LuaSnip с nvim-cmp.
- **kanagawa.nvim**: Цветовая схема.
- **telescope.nvim**: Мощный инструмент для поиска файлов, текста и буферов.
- **ale**: Асинхронное выполнение линтеров.
- **nvim-autopairs**: Автоматическое закрытие парных символов.
- **nvim-ts-autotag**: Автоматическое закрытие HTML/XML тегов.
- **bufferline.nvim**: Плагин для управления буферами.
- **mini.nvim**: Коллекция мини-плагинов.
- **nvim-tree.lua**: Файловый менеджер.
- **nvim-comment**: Плагин для комментирования кода.
- **dashboard-nvim**: Красивый стартовый экран.
- **gitsigns.nvim**: Интеграция с Git для отображения изменений.
- **lualine.nvim**: Статусная строка.
- **outline.nvim**: Плагин для отображения структуры кода.
- **which-key.nvim**: Плагин для отображения доступных сопоставлений клавиш.
- **toggleterm.nvim**: Плагин для управления терминалом внутри Neovim.

## Сопоставления клавиш

### Which-Key

Для удобства навигации и управления используется плагин `which-key.nvim`. Вот основные сопоставления клавиш:

#### Управление файлами

- `<leader>ff`: Найти файл.
- `<leader>fg`: Поиск по тексту.
- `<leader>fb`: Показать буферы.
- `<leader>fh`: Показать теги помощи.
- `<leader>fn`: Создать новый файл.

#### Управление окнами

- `<leader>wh`: Переместиться влево.
- `<leader>wl`: Переместиться вправо.
- `<leader>wj`: Переместиться вниз.
- `<leader>wk`: Переместиться вверх.
- `<leader>w_`: Вертикальное разделение окна.
- `<leader>w-`: Горизонтальное разделение окна.

#### Управление буферами

- `<leader>bn`: Следующий буфер.
- `<leader>bp`: Предыдущий буфер.
- `<leader>bd`: Удалить буфер.

#### Git

- `<leader>hs`: Добавить изменения в индекс.
- `<leader>hr`: Сбросить изменения.
- `<leader>hS`: Добавить весь буфер в индекс.
- `<leader>hR`: Сбросить весь буфер.
- `<leader>hp`: Предварительный просмотр изменений.
- `<leader>hb`: Показать автора строки.
- `<leader>hd`: Показать изменения в текущем файле.
- `<leader>hD`: Показать изменения с предыдущей версией.
- `<leader>hq`: Добавить изменения в quickfix список.
- `<leader>hQ`: Добавить все изменения в quickfix список.

#### LSP

- `<leader>lrn`: Переименовать символ.
- `<leader>lK`: Показать подсказку.
- `<leader>lgd`: Перейти к определению.
- `<leader>lgt`: Перейти к типу.
- `<leader>lgi`: Перейти к реализации.
- `<leader>lgr`: Показать ссылки.
- `<leader><C-s>`: Показать помощь по сигнатуре.
- `<leader>le`: Показать диагностику.
- `<leader>ld`: Перейти к предыдущей диагностике.
- `<leader>lD`: Перейти к следующей диагностике.
- `<leader>lq`: Закрыть диагностику.
- `<leader>lA`: Показать доступные действия.
- `<leader>lF`: Форматировать код.

#### Nvim-tree

- `<leader>ee`: Переключить файловый менеджер.

#### Hop

- `f`: Переместиться к символу вперед.
- `F`: Переместиться к символу назад.
- `t`: Переместиться к символу вперед, перед курсором.
- `T`: Переместиться к символу назад, после курсора.

#### Telescope

- `<leader>o`: Переключить отображение структуры кода.

## Установка

1. Установите Neovim.
2. Скопируйте этот конфигурационный файл в `~/.config/nvim/init.lua`.
3. Установите плагины с помощью `:Lazy sync`.


