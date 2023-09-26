    root /var/www/html;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }

    location ~* \.(css|js|gif|jpeg|jpg|png|svg)$ {
        expires max;
        log_not_found off;
    }