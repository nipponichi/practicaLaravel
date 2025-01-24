# Imagen base de PHP con Apache
FROM php:8.2-apache

# Copiar el archivo index.php a la raíz del servidor web
COPY index.php /var/www/html/

# Configuración de Apache (opcional)
RUN docker-php-ext-install mysqli pdo pdo_mysql \
    && a2enmod rewrite

# Exponer el puerto 80 para acceso web
EXPOSE 80

# Iniciar Apache
CMD ["apache2-foreground"]
