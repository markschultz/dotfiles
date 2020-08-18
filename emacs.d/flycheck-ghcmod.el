(require 'flycheck)

(flycheck-define-checker haskell-ghcmod
			 "A Haskell syntax and type checker using ghc-mod"
			 :command ("ghc-mod" "check" source-inplace)
			 :error-patterns
			 ((warning line-start (file-name) ":" line ":" column ":"
				   (or " " "\n    ") "Warning:" (optional "\n")
				   (one-or-more " ")
				   (message (one-or-more not-newline)
					    (zero-or-more "\n"
							  (one-or-more " ")
							  (one-or-more not-newline)))
				   line-end)
			  (error line-start (file-name) ":" line ":" column ":"
				 (or (message (one-or-more not-newline))
				     (and "\n" (one-or-more " ")
					  (message (one-or-more not-newline)
						   (zero-or-more "\n"
								 (one-or-more " ")
								 (one-or-more not-newline)))))
				 line-end))
			 :modes haskell-mode
			 :next-checkers ((warnings-only . haskell-hlint)))

(add-to-list 'flycheck-checkers 'haskell-ghcmod)

(provide 'flycheck-ghcmod)
