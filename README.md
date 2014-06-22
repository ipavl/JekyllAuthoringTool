Jekyll Authoring Tool (JAT)
===========================

The Jekyll Authoring Tool (JAT) is a Ruby on Rails app that will produce 
markdown files (.md) suitable for immediate usage in most 
[Jekyll](http://jekyllrb.com) blogs/websites.

Via a webform, the user is prompted for the post's title, permalink 
(usually only used for non-blog posts), layout (the default is "default"), 
and the post's content. Upon clicking the "generate" button, the user is prompted 
to download a text file that includes all of the above information formatted 
correctly, including the date the post was generated and a file name in the 
format of "YYYY-MM-DD-hyphenated-title.md", which is typically used by Jekyll 
sites for blog posts in the _posts directory (other types of pages can be simply 
saved as <something>.md and placed in the appropriate alternate directory).
