# NGINX Installation and Setup Guide

## Step 1: Install NGINX

### Update the Package List:
```bash
sudo apt update
```

### Install NGINX:
```bash
sudo apt install nginx -y
```

### Start and Enable NGINX:
```bash
sudo systemctl start nginx
sudo systemctl enable nginx
```

### Check NGINX Status:
```bash
sudo systemctl status nginx
```

## Step 2: Navigate to the Document Root Directory and Create the HTML File

### Change to the /var/www/html directory:
```bash
cd /var/www/html
```

### Create the HTML File:
```bash
sudo touch index.html
```

### Edit the HTML File:
```bash
sudo nano index.html
```

### Add HTML Content:
```html
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to NGINX!</title>
</head>
<body>
    <h1>Success! The NGINX server is up and running.</h1>
</body>
</html>
```

## Step 3: Set Correct Permissions

### Set the correct ownership and permissions for the /var/www/html directory and its contents:
```bash
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
```

### Restart the NGINX service to apply the changes:
```bash
sudo systemctl restart nginx
```

## Troubleshooting:

### Disable firewall:
```bash
sudo ufw disable
```
