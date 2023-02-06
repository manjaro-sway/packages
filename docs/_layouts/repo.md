[{{ site.name || site.title }}]
SigLevel = PackageRequired
Server = {{ page.url | prepend: site.baseurl | prepend: site.url | append: '$arch' }}
