#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat > /var/www/html/index.html <<HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Terraform DevOps Demo</title>
    <style>
      body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #0f172a, #1e293b);
        color: #e2e8f0;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
      }

      .card {
        width: min(700px, 88vw);
        background: rgba(15, 23, 42, 0.8);
        border: 1px solid rgba(148, 163, 184, 0.3);
        border-radius: 18px;
        padding: 40px 32px;
        box-shadow: 0 20px 50px rgba(0, 0, 0, 0.25);
        text-align: center;
      }

      h1 {
        margin: 0 0 16px;
        font-size: clamp(2rem, 4vw, 3rem);
        color: #f8fafc;
      }

      p {
        margin: 10px 0;
        font-size: 1.1rem;
        color: #cbd5e1;
      }

      .badge {
        display: inline-block;
        margin-top: 18px;
        padding: 10px 18px;
        border-radius: 999px;
        background: #2563eb;
        color: white;
        font-weight: bold;
        letter-spacing: 0.04em;
      }
    </style>
  </head>
  <body>
    <div class="card">
      <h1>Terraform DevOps Demo</h1>
      <p>Infrastructure deployed with Terraform.</p>
      <p>Provisioning AWS resources as code using a repeatable DevOps workflow.</p>
      <div class="badge">IaC · Automation · Cloud</div>
    </div>
  </body>
</html>
HTML
