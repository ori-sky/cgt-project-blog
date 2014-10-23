BLOG_DIR=/usr/local/nginx/html/blog
BLOG_FILE=cgt.html

STYLE=-c /css/bootstrap.min.css -c css/blog.css -c css/page.css
POST_HTML=post.html
TEMP_HTML=template.html
BD_VARS=STYLE="$(STYLE)" POST_HTML="$(POST_HTML)" TEMP_HTML="$(TEMP_HTML)"

install-blog:
	mkdir -p $(BLOG_DIR)/css
	cp *.css $(BLOG_DIR)/css
	$(BD_VARS) blogdown posts/*.md > $(BLOG_DIR)/$(BLOG_FILE)
