# Usar una imagen oficial de PHP con FPM
FROM php:8.2-cli

# Instalar dependencias del sistema y extensiones necesarias
RUN apt-get update && apt-get install -y \
    git unzip curl libpng-dev libjpeg-dev libfreetype6-dev libonig-dev zip \
    && docker-php-ext-install pdo pdo_mysql gd mbstring \
    && rm -rf /var/lib/apt/lists/*

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Definir el directorio de trabajo
WORKDIR /var/www

# Copiar archivos de la aplicación
COPY . .


