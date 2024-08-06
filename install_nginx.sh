#!/bin/bash

# Step 1: Install NGINX
echo "Updating the package list..."
sudo apt update

echo "Installing NGINX..."
sudo apt install nginx -y

echo "Starting and enabling NGINX..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Checking NGINX status..."
sudo systemctl status nginx

# Step 2: Navigate to the Document Root Directory and Create the HTML File
echo "Navigating to the /var/www/html directory..."
cd /var/www/html

echo "Creating the index.html file..."
sudo touch index.html

echo "Adding HTML content to index.html..."
sudo bash -c 'cat > index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to NGINX!</title>
</head>
<body>
    <h1>Success! The NGINX server is up and running.</h1>
</body>
</html>
EOF'

# Step 3: Set Correct Permissions
echo "Setting correct ownership and permissions for /var/www/html directory and its contents..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "Restarting NGINX service to apply changes..."
sudo systemctl restart nginx

echo "NGINX installation and setup completed successfully!"
