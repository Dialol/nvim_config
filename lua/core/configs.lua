-- Использовать системный буфер обмена для копирования и вставки
vim.opt.clipboard = "unnamedplus"

-- Сократить вывод сообщений Vim, убирая лишние символы
vim.opt.shortmess:append("c")

-- Вставлять пробелы вместо табуляции
vim.opt.expandtab = true

-- Количество пробелов для одного уровня отступа
vim.opt.shiftwidth = 4

-- Количество пробелов, соответствующих одному символу табуляции
vim.opt.tabstop = 4

-- Количество пробелов, вставляемых при нажатии клавиши табуляции
vim.opt.softtabstop = 4

-- Автоматически добавлять отступы в коде
vim.opt.smartindent = true

-- Включить нумерацию строк
vim.wo.number = true

-- Включить относительную нумерацию строк
vim.wo.relativenumber = true

-- Отключить автоматическую загрузку плагинов для определенных типов файлов
vim.g.did_load_filetypes = 1

-- Настройки форматирования текста
vim.g.formatoptions = "qrn1"

-- Не показывать текущий режим (например, -- ВСТАВКА --)
vim.opt.showmode = false

-- Время ожидания перед сохранением свап-файла (в миллисекундах)
vim.opt.updatetime = 100

-- Всегда показывать столбец знаков (например, для отображения значков Git)
vim.wo.signcolumn = "yes"

-- Минимальное количество строк сверху и снизу при прокрутке
vim.opt.scrolloff = 8

-- Не переносить длинные строки на следующую строку
vim.opt.wrap = false

-- Переносить длинные строки по словам
vim.wo.linebreak = true

-- Разрешить редактирование в "виртуальных" позициях (например, за пределами строки)
vim.opt.virtualedit = "block"

-- Включить поддержку отмены изменений между сеансами
vim.opt.undofile = true

-- Использовать zsh в качестве оболочки по умолчанию
vim.opt.shell = "/bin/zsh"

-- Включить поддержку мыши
vim.opt.mouse = "a"

-- Перемещать фокус окна при наведении мыши
vim.opt.mousefocus = true

vim.wo.signcolumn = "no"  -- Отключить столбец знаков


