#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat > /var/www/html/index.html <<HTML
<html>
  <body>
    <h1>Terraform DevOps Demo</h1>
    <p>Infrastructure deployed with Terraform.</p>
  </body>
</html>
HTML
