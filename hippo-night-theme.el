;;; hippo-theme.el --- Hippo color theme for GNU Emacs.

;; Copyright (C) 2014 Kimi MA <kimi.im@outlook.com>

;; Author:Kimi MA
;; Keywords: faces local color
;; URL: http://github.com/kimim/emacs-hippo-theme
;; Version: 0.0.1
;; Keywords: theme

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Commentary:
;;
;; This theme assumes light background.  To load it, use:
;;
;;     (require 'hippo-theme)

;;; Code:

(deftheme hippo-night
    "Color theme by hippo-night.")

(let ((class '((class color) (min-colors 88)))
      (hippo-theme-bg "#262626")
      (hippo-theme-fg "#ffffff")
      (hippo-theme-const "cyan2")
      (hippo-theme-definition "deep sky blue")
      (hippo-theme-comment "medium sea green")
      (hippo-theme-error "orange red")
      (hippo-theme-builtin "#ff55ff")
      (hippo-theme-string "lime green")
      (hippo-theme-blue-3 "blue")
      (hippo-theme-region "gray30")
      (hippo-theme-shadow "grey80")
      (hippo-theme-highlight "gray12")
      (hippo-theme-modeline-bg "gray25"))
  (apply 'custom-theme-set-faces 'hippo-night
         (mapcar
          (lambda (x) `(,(car x) ((,class ,(cdr x)))))
          `((default :foreground ,hippo-theme-fg :background ,hippo-theme-bg)
            (bold :inherit default :weight bold)
            (italic :inherit default :slant italic)
            (underline :inherit default :foreground "orange" :underline t)
            ;; make the code font in markdown look better
            (fixed-pitch :family Consolas)
            (fixed-pitch-serif :family Consolas)
            (cursor :background ,"orange")
            (fringe :background ,hippo-theme-bg)
            (mode-line :foreground ,hippo-theme-fg :background ,hippo-theme-modeline-bg :box nil :height 0.85)
            (mode-line-inactive :foreground "light steel blue" :background ,hippo-theme-modeline-bg :box nil :height 0.85)
            (mode-line-buffer-id :foreground ,hippo-theme-fg :box nil :weight bold)
            (header-line :foreground ,hippo-theme-fg :background ,hippo-theme-modeline-bg :box nil :height 0.85)
            (shadow :foreground ,hippo-theme-shadow)
            (success :foreground ,hippo-theme-error)
            (error :foreground ,hippo-theme-error :weight bold)
            (warning :foreground "DarkOrange" :weight bold)
            (compilation-warning :underline t :inherit warning)
            (compilation-error :underline t :inherit error)
            (compilation-info :underline t :foreground ,hippo-theme-const)
            (highlight :background "gray30")
            (marginalia-documentation :background unspecified :slant italic) ;; remove background
            (region :background ,hippo-theme-region)
            (secondary-selection :background "deep sky blue" :foreground "#f6f3e8")
            (whitespace-indentation :background "LightYellow" :foreground "lightgray")
            ;; (font-lock-negation-char-face :foreground "#e8e2b7")
            (font-lock-builtin-face :foreground ,hippo-theme-builtin :bold t)
            (font-lock-comment-face :foreground ,hippo-theme-comment :slant normal)
            (font-lock-comment-delimiter-face :foreground ,hippo-theme-comment :slant normal)
            (font-lock-constant-face :foreground ,hippo-theme-const)
            (font-lock-doc-face :foreground ,hippo-theme-string)
            (font-lock-doc-string-face :foreground ,hippo-theme-string)
            (font-lock-function-name-face :foreground ,hippo-theme-definition :bold t)
            (font-lock-keyword-face :foreground ,hippo-theme-builtin :weight bold)
            (font-lock-preprocessor-face :foreground ,hippo-theme-builtin :bold t)
            (font-lock-regexp-grouping-backslash :foreground ,hippo-theme-builtin)
            (font-lock-regexp-grouping-construct :foreground ,hippo-theme-builtin)
            (font-lock-string-face :foreground ,hippo-theme-string)
            (font-lock-type-face :foreground ,hippo-theme-fg :underline t :slant italic)
            (font-lock-variable-name-face :foreground ,hippo-theme-fg)
            (font-lock-warning-face :foreground ,hippo-theme-error)
            (font-lock-doxygen-face :foreground "SaddleBrown" :background "#f7f7f7")
            (org-level-1 :weight bold :foreground "light blue")
            (org-level-2 :weight bold :foreground "turquoise")
            (org-level-3 :weight bold :foreground "orange")
            (org-level-4 :slant normal :foreground "#E3258D")
            (org-level-5 :slant normal :foreground "#0088ff")
            (org-level-6 :slant italic :foreground "#EA6300")
            (org-level-7 :slant italic :foreground "#2EAE2C")
            (org-level-8 :slant italic :foreground "#FD8008")
            (markdown-header-face-1 :inherit org-level-1)
            (markdown-header-face-2 :inherit org-level-2)
            (markdown-header-face-3 :inherit org-level-3)
            (markdown-header-face-4 :inherit org-level-4)
            (markdown-header-face-5 :inherit org-level-5)
            (markdown-header-face-6 :inherit org-level-6)
            (markdown-header-face-7 :inherit org-level-7)
            (markdown-header-face-8 :inherit org-level-8)
            (org-code :foreground ,hippo-theme-builtin :weight bold)
            (org-verbatim :foreground ,hippo-theme-const)
            (org-hide :foreground ,hippo-theme-bg)
            (org-tag :slant italic :weight normal :foreground ,hippo-theme-shadow)
            (org-beamer-tag :inherit org-tag)
            (org-block-begin-line :foreground ,hippo-theme-const)
            (org-block-end-line :foreground ,hippo-theme-const)
            (org-block :background "gray20")
            (org-scheduled-previously :foreground "cyan")
            (org-todo :foreground "orange" :weight bold)
            (org-warning :foreground "orange red" :weight bold)
            (org-table :foreground "light blue")
            (org-footnote :foreground "magenta2" :underline t)
            (org-ref-cite-face :inherit link)
            (org-agenda-clocking :inherit secondary-selection
                                 :foreground ,hippo-theme-fg)
            (gnus-summary-cancelled :foreground "lightblue")
            (gnus-header-subject :foreground "blue" :bold t)
            (ido-subdir :weight bold)
            (which-func :foreground ,hippo-theme-builtin)
            (minibuffer-prompt :foreground "light blue")
            (hl-line :background ,hippo-theme-highlight)
            ;; defaults
            (show-paren-match :background "turquoise")
            (isearch :background "magenta3" :foreground "lightskyblue1")
            (link :foreground "light blue" :underline t)
            ;; other packages
            (helm-locate-finish :foreground ,hippo-theme-const)
            (aw-mode-line-face :foreground ,hippo-theme-string)
            (swiper-match-face-1 :background "RoyalBlue4")
            (swiper-match-face-2 :background "#7d3c03")
            (swiper-match-face-3 :background "#1a6600")
            (swiper-match-face-4 :background "#750a20")
            (swiper-background-match-face-1 :background "gray20")
            (swiper-background-match-face-2 :background "#7d3c03")
            (swiper-background-match-face-3 :background "#1a6600")
            (swiper-background-match-face-4 :background "#750a20")
            (swiper-line-face :background "RoyalBlue4")
            (hydra-face-red :foreground "#cc0000" :bold t)
            (hydra-face-blue :foreground "RoyalBlue3" :bold t)
            (powerline-active1 :background "grey22" :foreground "white" :inherit mode-line)
            (powerline-active2 :background "grey40" :foreground "white" :inherit mode-line)
            (powerline-inactive1 :background "grey22" :foreground "white" :inherit mode-line-inactive)
            (powerline-inactive2 :background "grey40" :foreground "white" :inherit mode-line-inactive)
            ;; (magit-tag :background "LemonChiffon1" :foreground "goldenrod4")
            ;; (magit-section-heading :inherit header-line)
            (magit-section-highlight :weight bold :background ,hippo-theme-highlight)
            ;; (magit-diff-context :foreground "grey20")
            ;; (magit-diff-context-highlight :weight bold :foreground "grey20")
            ;; (magit-diff-added :inherit diff-added)
            ;; (magit-diff-added-highlight :inherit diff-added :weight bold)
            ;; (magit-diff-removed :inherit diff-removed)
            ;; (magit-diff-removed-highlight :inherit diff-removed :weight bold)
            ;; (magit-diff-file-heading)
            ;; (magit-diff-file-heading-highlight :weight bold)
            ;; (magit-diff-file-heading-selection :foreground "red")
            ;; (magit-diff-hunk-heading :inherit diff-hunk-header)
            ;; (magit-diff-hunk-heading-highlight :inherit diff-hunk-header :weight bold)
            ;; (magit-hash :foreground "firebrick")
            ;; (magit-branch-remote :background "Grey85" :foreground "OliveDrab4" :box t)
            ;; (magit-branch-local :background "Grey85" :foreground "LightSkyBlue4" :box t)
            (ivy-highlight-face)
            (ivy-posframe :background "#eeeeee" :foreground "#000000")
            (wgrep-face :foreground ,hippo-theme-comment)
            (cider-instrumented-face)
            (mu4e-header-highlight-face :background "gray20")
            (mu4e-replied-face :foreground "deep sky blue")
            (mu4e-forwarded-face :foreground "turquoise")
            (mu4e-unread-face :foreground "light green")
            (sr-active-path-face :background ,hippo-theme-bg :foreground "gold")
            (sr-passive-path-face :background ,hippo-theme-bg :foreground "light blue")
            (hide-ifdef-shadow :inherit shadow :foreground "gray")
            (lsp-ui-doc-url :inherit link :height 0.8)
            (lsp-ui-doc-background :background ,hippo-theme-modeline-bg)
            (term-color-white :foreground "white")
            (term-color-blue :foreground "light blue")
            (next-error :inherit highlight)
            (yas-field-highlight-face :inherit highlight)))))

;;(custom-theme-set-variables
;; 'hippo-night
;; '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682"
;;                            "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"]))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'hippo-night)

;;; hippo-night-theme.el ends here
