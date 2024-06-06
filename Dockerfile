# Use an official PHP image as the base image
FROM php:latest

# Set working directory
WORKDIR /var/www/html

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
        libzip-dev \
        unzip \
        nodejs \
        npm \
        libpq-dev  # Install the PostgreSQL development library


# Install PHP extensions
RUN docker-php-ext-install pdo pdo_pgsql pdo_mysql zip pgsql  # Enable PDO MySQL extension


# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy Laravel files to the container
COPY . .

# Run Composer update
RUN composer update

# Generate Laravel application key
RUN php artisan key:generate

# Install Laravel dependencies
RUN composer install

# Expose port 8007 for the Laravel application
EXPOSE 8007

# Command to run when the container starts
CMD ["php", "artisan", "serve", "--host", "0.0.0.0", "--port", "8007"]

