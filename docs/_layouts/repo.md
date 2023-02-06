[{{ site.name or site.title }}]
SigLevel = PackageRequired
Server = {{ page.url | prepend: site.baseurl | prepend: site.url | append: '$arch' }}
