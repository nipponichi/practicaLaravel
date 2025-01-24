# 1. Usar una imagen oficial de PHP con FPM
FROM php:8.2-cli
# 2. Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    zip \
    && docker-php-ext-install pdo pdo_mysql gd mbstring

# 3. Instalar Composer (gestor de paquetes de PHP)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 4. Definir el directorio de trabajo
WORKDIR /var/www

# 5. Copiar los archivos de la aplicación
COPY . .

# 6. Instalar dependencias de Laravel
RUN composer install --no-dev --optimize-autoloader

# 7. Permisos necesarios para la caché y logs
RUN chmod -R 777 storage bootstrap/cache

# 8. Exponer el puerto donde correrá Laravel
EXPOSE 9000

# 9. Ejecutar migraciones y servir la aplicación
CMD php artisan migrate --force && php artisan serve --host=0.0.0.0 --port=9000
