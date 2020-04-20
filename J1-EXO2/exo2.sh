echo "============Telechargement============="
docker pull nginx
echo "============Création du repetoire static=============="
mkdir /tmp/nginx

echo '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>title</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
  </head>
  <body>
    <p>Je suis le paragraphe nginx</p>
  </body>
</html>'>/tmp/nginx/index.html

echo "============Lancement du serveur===================="
docker run --name nginx -v /tmp/nginx/:/usr/share/nginx/html:ro -p 8080:80 nginx
