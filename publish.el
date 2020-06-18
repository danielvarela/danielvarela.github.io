(require 'ox-publish)

(setq org-publish-project-alist
      '(("posts"
         :base-directory "posts/"
         :base-extension "org"
         :publishing-directory "./"
         :recursive t
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :sitemap-title ""
         :sitemap-filename "sitemap.org"
         :sitemap-style list
         :author "Daniel Varela"
         :email "daniel.varela@biochemistry.lu.se"
         :with-creator t)
        ("index"
         :base-directory "index"
         :base-extention "org"
         :section-numbers nil
         :with-toc nil
         :html-postamble t
         :publishing-directory "./"
         :publishing-function org-html-publish-to-html)
        ("css"
          :base-directory "css/"
          :base-extension "css"
          :publishing-directory "css/"
          :publishing-function org-publish-attachment
          :recursive t)
        ("all" :components ("posts" "index" "css"))))
