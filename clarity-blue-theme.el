(deftheme clarity-blue
  "A simple them with a blue backgound.")

(let ((class '((class color) (min-colors 89)))
      ;; base colors
      (main-bg         "#114488")
      (main-fg         "#EEEEEE")
      (inactive-bg     "#113388")
      (inactive-fg     "gray")
      (active-bg       "#113388")
      (active-fg       "#F9DE14")
      (light-bg        "#88a1c3")

      ;; highlight colors
      (hl-blue         "#88aadd")     
      (hl-green        "#a9dc82")
      (hl-khaki        "#dcb582")
      (hl-pink         "#dc82a9")
      (hl-red          "#dc82a9")
      (mut-green       "#118855")
      (mut-red         "#881144")
      
      ;; misc colors 
      (maroon          "#422732")
      (black           "#000000")
      (white           "#FFFFFF"))

  (custom-theme-set-faces
   'clarity-blue
   ;; base
   `(default ((,class :background ,main-bg :foreground ,main-fg)))
   `(fringe ((,class :inherit 'default)))
   `(vertical-border ((,class :foreground ,light-bg)))
   `(region  ((,class :background ,active-bg)))

   ;; mode line
   `(mode-line ((,class :background ,active-bg :foreground ,main-fg :box ,inactive-bg)))

   ;;make this a slightly darker version of main-bg with a dimmed main-fg
   `(mode-line-inactive ((,class :background ,main-bg
				 :foreground ,inactive-fg
				 :box ,inactive-bg)))

   ;; misc faces
   `(warning ((,class :foreground ,hl-red)))

   ;; font-lock
   `(font-lock-builtin-face ((,class :inherit 'default)))
   `(font-lock-comment-delimiter-face ((,class :foreground ,hl-blue)))
   `(font-lock-comment-face ((,class :foreground ,hl-blue)))
   `(font-lock-constant-face ((,class :inherit 'default)))
   `(font-lock-doc-face ((,class :inherit 'default)))
   `(font-lock-doc-markup-face ((,class :inherit 'default)))
   `(font-lock-function-name-face ((,class :inherit 'default)))
   `(font-lock-keyword-face ((,class :inherit 'default)))
   `(font-lock-negation-char-face ((,class :inherit 'default)))
   `(font-lock-preprocessor-face ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-backslash ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-construct ((,class :inherit 'default)))
   `(font-lock-string-face ((,class :inherit 'default)))
   `(font-lock-type-face ((,class :inherit 'default)))
   `(font-lock-variable-name-face ((,class :inherit 'default)))
   `(font-lock-warning-face ((,class :inherit 'default)))

   ;; dired
   `(dired-directory ((,class :foreground ,hl-blue)))
   
   ;; mu4e
   `(mu4e-header-highlight-face ((,class :background "#165bb6"
					 :foreground ,main-fg
					 :underline nil)))
   `(mu4e-header-key-face ((,class :foreground ,hl-pink)))
   `(mu4e-highlight-face ((,class :foreground ,hl-khaki)))
   `(mu4e-title-face ((,class :foreground ,hl-green)))
   `(mu4e-unread-face ((,class :foreground ,hl-green)))
   
   ;; magit
   `(magit-diff-added ((,class :background ,mut-green)))
   `(magit-diff-added-highlight ((,class :background ,hl-green :foreground ,black)))
   `(magit-diff-context-highlight ((,class :background "#14509F")))
   `(magit-diff-file-heading-highlight ((,class :background "#609CEB")))
   `(magit-diff-hunk-heading ((,class :background "#1A1087")))
   `(magit-diff-hunk-heading-highlight ((,class :background "#108187" :foreground ,main-fg)))
   `(magit-diff-removed ((,class :background ,mut-red)))
   `(magit-diff-removed-highlight ((,class :background ,hl-red :foreground ,black)))
   `(magit-diff-whitespace-warning ((,class :background ,white)))
   `(magit-section-highlight ((,class :background ,hl-blue :foreground ,black)))


   `(outline-1 ((,class :foreground ,hl-green)))
   `(outline-2 ((,class :foreground ,hl-pink)))
   `(outline-3 ((,class :foreground ,hl-khaki)))
   `(outline-4 ((,class :foreground ,hl-red)))
   `(outline-5 ((,class :foreground ,hl-blue)))))

(provide-theme 'clarity-blue)

(provide 'clarity-blue-theme)
