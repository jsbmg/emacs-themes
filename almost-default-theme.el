;; almost-default theme

;; The almost-default theme attempts to maintain a similiar look and
;; feel to the default, and attempts to limit syntax highlighting to
;; higher-level structure instead of every little piece of syntax

(deftheme almost-default
  "A simple theme with minimal syntax highlighting.")

(let ((class '((class color) (min-colors 89)))
      ;; base colors
      (main-bg               "#FFFFFF")
      (main-fg               "#222222")
      (region-color          "lightgray")
      (comment-color         "#114488")
      (docstring-color       "dark green")
      (mode-line-bg          "grey75")
      (mode-line-inactive-bg "grey90")
      (border-color          "grey65")
      (mode-line-inactive-fg "grey20"))
  
  (custom-theme-set-faces
   'almost-default
   ;; base
   `(default ((,class :background ,main-bg :foreground ,main-fg)))
   `(fringe ((,class :inherit 'default)))
   `(region  ((,class :background ,region-color)))
   `(vertical-border ((,class :foreground ,border-color)))

   ;; mode line
   ;; `(mode-line ((,class
   ;; 		 :background ,mode-line-bg
   ;; 		 :box (:color ,mode-line-bg :line-width -1 :style nil))))
   ;; `(mode-line-inactive ((,class
   ;; 		 :background ,mode-line-inactive-bg
   ;; 		 :box (:color ,mode-line-inactive-bg :line-width -1 :style nil))))

   ;; dired
   `(dired-directory ((,class :foreground "royalblue")))
   `(dired-symlink ((,class :foreground "purple")))

   ;; font-lock -- uncolor everything but comments and docstrings
   ;; but format strings as italic and underline function declarations
   `(font-lock-builtin-face ((,class :inherit 'default)))
   `(font-lock-comment-delimiter-face ((,class :foreground ,comment-color)))
   `(font-lock-comment-face ((,class :foreground ,comment-color)))
   `(font-lock-constant-face ((,class :inherit 'default)))
   `(font-lock-doc-face ((,class :foreground ,docstring-color)))
   `(font-lock-doc-markup-face ((,class :inherit 'font-lock-comment-face)))
   `(font-lock-function-name-face ((,class :inherit 'default :underline t)))
   `(font-lock-keyword-face ((,class :inherit 'default)))
   `(font-lock-negation-char-face ((,class :inherit 'default)))
   `(font-lock-preprocessor-face ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-backslash ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-construct ((,class :inherit 'default)))
   `(font-lock-string-face ((,class :inherit 'default :slant italic)))
   `(font-lock-type-face ((,class :inherit 'default)))
   `(font-lock-variable-name-face ((,class :inherit 'default)))
   `(font-lock-warning-face ((,class :inherit 'warning)))))

(provide-theme 'almost-default)

(provide 'almost-default-theme)
