<!doctype html><html lang="en"><head><meta charset="utf-8">
<title>WOFTAM</title></head><body>
			<ul class="post-list">
				{% for page in site.pages %}<li>
					<h1><a href="{{ site.url }}{{ page.url }}">{{ page.title }}</a></h1>
				</li>{% endfor %}
			</ul>
</body></html>
