(deftheme almost-default
  "Just because you can color everything, doesn't mean you should.")

(let ((class '((class color) (min-colors 89)))
      ;; base colors
      (main-bg         "#EEEEEE")
      (main-fg         "#222222")
      (region-color    "lightgray")
      (comment-color   "#114488")
      (mode-line-bg    "gray80")
      (mode-line-box   "gray50"))
  
  (custom-theme-set-faces
   'almost-default
   ;; base
   `(default ((,class :background ,main-bg :foreground ,main-fg)))
   `(fringe ((,class :inherit 'default)))
   `(region  ((,class :background ,region-color)))
   `(vertical-border ((,class :foreground "gray65")))

   ;; mode line
   `(mode-line ((,class
		 :background ,mode-line-bg
		 :box (:color ,mode-line-bg :line-width -1 :style nil))))

   ;; dired
   `(dired-directory ((,class :foreground "royalblue")))
   `(dired-symlink ((,class :foreground "purple")))

   ;; font-lock -- uncolor everything but comments and docstrings
   `(font-lock-builtin-face ((,class :inherit 'default)))
   `(font-lock-comment-delimiter-face ((,class :foreground ,comment-color)))
   `(font-lock-comment-face ((,class :foreground ,comment-color)))
   `(font-lock-constant-face ((,class :inherit 'default)))
   `(font-lock-doc-face ((,class :inherit 'font-lock-comment-face)))
   `(font-lock-doc-markup-face ((,class :inherit 'font-lock-comment-face)))
   `(font-lock-function-name-face ((,class :inherit 'default)))
   `(font-lock-keyword-face ((,class :inherit 'default)))
   `(font-lock-negation-char-face ((,class :inherit 'default)))
   `(font-lock-preprocessor-face ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-backslash ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-construct ((,class :inherit 'default)))
   `(font-lock-string-face ((,class :inherit 'default)))
   `(font-lock-type-face ((,class :inherit 'default)))
   `(font-lock-variable-name-face ((,class :inherit 'default)))
   `(font-lock-warning-face ((,class :inherit 'warning)))))

(provide-theme 'almost-default)

(provide 'almost-default-theme)
