;; cannot be used, to be investigated
(require 'org)
(require 'ox-latex)
(require 'ox-beamer)
;(require 'ob-plantuml)
(defun org-babel-execute:ada (body params))
;(setq org-plantuml-jar-path (getenv "PLANTUML_JAR_PATH"))
;(setq org-confirm-babel-evaluate nil)
(org-beamer-export-to-pdf)
