(deftheme clarity-blue
  "A simple them with a blue backgound.")

(let ((class '((class color) (min-colors 89)))
      ;; base colors
      (main-bg         "#114488")
      (main-fg         "#EEEEEE")
      (inactive-bg     "#496FA2")
      (inactive-fg     "#88A1C3")
      (inactive-alt-bg "#4D73A6")
      (active-bg       "#8099BB")
      (active-fg       "#88A1C3")

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
      (black           "#111111")
      (white           "#FFFFFF"))

  
  (custom-theme-set-faces
   'clarity-blue
   ;; base
   `(default ((,class :background ,main-bg :foreground ,main-fg)))
   `(fringe ((,class :inherit 'default)))
   `(vertical-border ((,class :foreground ,inactive-alt-bg)))
   `(region  ((,class :background ,active-bg)))

   ;; mode line
   `(mode-line ((,class :background ,active-bg
			:foreground ,black
			:box (:color ,active-bg :line-width -1 :style nil))))

   ;;make this a slightly darker version of main-bg with a dimmed main-fg
   `(mode-line-inactive ((,class :background ,inactive-bg
				 :foreground ,black
				 :box (:color ,inactive-bg :line-width -1 :style nil))))

   ;; misc faces
   `(warning ((,class :foreground "dark magenta")))

   ;; font-lock -- everything uncolored except for comments, docstrings and warning
   `(font-lock-builtin-face ((,class :inherit 'default)))
   `(font-lock-comment-delimiter-face ((,class :foreground ,hl-blue)))
   `(font-lock-comment-face ((,class :foreground ,hl-blue)))
   `(font-lock-constant-face ((,class :inherit 'default)))
   `(font-lock-doc-face ((,class :inherit 'font-lock-comment-face)))
   `(font-lock-doc-markup-face ((,class :inherit 'font-lock-comment-face)))
   `(font-lock-function-name-face ((,class :inherit 'default)))
   `(font-lock-keyword-face ((,class :inherit 'default)))
   `(font-lock-negation-char-face ((,class :inherit 'default)))
   `(font-lock-preprocessor-face ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-backslash ((,class :inherit 'default)))
   `(font-lock-regexp-grouping-construct ((,class :inherit 'default)))
   `(font-lock-string-face ((,class :inherit 'default :background "#116288")))
   `(font-lock-type-face ((,class :inherit 'default)))
   `(font-lock-variable-name-face ((,class :inherit 'default)))
   `(font-lock-warning-face ((,class :inherit 'warning)))

   ;; dired
   `(dired-directory ((,class :foreground ,hl-blue)))
   `(dired-symlink ((,class :foreground ,hl-khaki)))
   `(dired-marked ((,class :foreground ,maroon :underline t)))

   ;; mu4e
   `(mu4e-header-highlight-face ((,class :background "#165bb6"
					 :underline nil)))
   `(mu4e-header-key-face ((,class :foreground ,hl-pink)))
   `(mu4e-highlight-face ((,class :foreground ,hl-khaki)))
   `(mu4e-title-face ((,class :foreground ,hl-green)))
   `(mu4e-unread-face ((,class :foreground ,hl-green :weight bold)))

   ;; magit
   `(magit-diff-added ((,class :background ,mut-green)))
   `(magit-diff-added-highlight ((,class :background ,hl-green :foreground ,black)))
   `(magit-diff-context-highlight ((,class :background "#14509F")))
   `(magit-diff-file-heading-highlight ((,class :background ,hl-blue :foreground ,black)))
   `(magit-diff-hunk-heading ((,class :background "#1A1087")))
   `(magit-diff-hunk-heading-highlight ((,class :background "#108187" :foreground ,main-fg)))
   `(magit-diff-removed ((,class :background ,mut-red)))
   `(magit-diff-removed-highlight ((,class :background ,hl-red :foreground ,black)))
   `(magit-diff-whitespace-warning ((,class :background ,white)))
   `(magit-section-highlight ((,class :background ,hl-blue :foreground ,black)))

   ;; vterm
   `(vterm-color-black ((,class :foreground ,black :background ,black)))
   `(vterm-color-blue ((,class :foreground ,hl-blue :background ,hl-blue)))
   `(vterm-color-cyan ((,class :foreground ,hl-pink :background ,hl-pink)))
   `(vterm-color-green ((,class :foreground ,hl-pink :background ,hl-pink)))
   `(vterm-color-inverse-video ((,class :foreground ,hl-pink :background ,hl-pink)))
   `(vterm-color-magenta ((,class :foreground ,hl-pink :background ,hl-pink)))
   `(vterm-color-red ((,class :foreground ,hl-red :background ,hl-red)))
   `(vterm-color-underline ((,class :foreground ,hl-pink :background ,hl-pink)))
   `(vterm-color-white ((,class :foreground ,main-fg :background ,main-fg)))
   `(vterm-color-yellow ((,class :foreground ,hl-pink :background ,hl-pink)))

   `(outline-1 ((,class :foreground ,hl-green)))
   `(outline-2 ((,class :foregrounwarnind ,hl-pink)))
   `(outline-3 ((,class :foreground ,hl-khaki)))
   `(outline-4 ((,class :foreground ,hl-red)))
   `(outline-5 ((,class :foreground ,hl-blue)))))

(provide-theme 'clarity-blue)

(provide 'clarity-blue-theme)
