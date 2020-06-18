(require 'ox-publish)

(setq org-publish-project-alist
      '(("posts"
         :base-directory "posts/"
         :base-extension "org"
         :publishing-directory "public/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :sitemap-title "The Blog"
         :sitemap-filename "index.org"
         :sitemap-style list
         :author "Daniel Varela"
         :email "daniel.varela@biochemistry.lu.se"
         :with-creator t)
        ("css"
          :base-directory "css/"
          :base-extension "css"
          :publishing-directory "public/css"
          :publishing-function org-publish-attachment
          :recursive t)
        ("all" :components ("posts" "css"))))