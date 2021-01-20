; set the default indentation to 4 spaces
(setq tab-width 4)
;(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "bsd" c-basic-offset 4)

; show absolute line numbers
(global-display-line-numbers-mode)

; show column number
(setq column-number-mode t)

; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

; highlight brackets
;(setq show-paren-style 'parenthesis)

; highlight entire expression
;(setq show-paren-style 'expression)

; highlight brackets if visible, else entire expression
;(setq show-paren-style 'mixed)

; highlight current line
(global-hl-line-mode 1)

; electric pair mode
(electric-pair-mode 1)

; make electric-pair-mode work with `` and with __
(setq electric-pair-pairs '((?\` . ?\`)(?\_ . ?\_)))

; load theme
(load-theme 'adwaita)

; enable mouse in no window system mode
(xterm-mouse-mode)

; change cursor color
(set-cursor-color "yellow")
