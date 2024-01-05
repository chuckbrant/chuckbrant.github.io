Chuck's little Photo Journal and Pictures (aka Blog)
====================

----------
This is just a hack up of photograma, to support Icloud as the backend.

Workflow
============ 

###How to Publish a new Travel Entry and/or Photo Album

1. Create an Apple Cloud Shared Library with a public URL (you will use this in both the gallery and journal
2. Add the photo for the Photo Ablum Cover and the Post into gallery/photo
3. Copy a post template from /template to _posts
4. Edit the post with the correct date, and add the Album Cover Photo and the text about the location
5. Edit gallery/index with the new album information
6. Post it to Github
   git add . --all
   git commit -a -m "commit comment"
   git push
