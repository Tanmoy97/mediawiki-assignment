FROM php:7.4-apache

# Install dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    libicu-dev \
    unzip \
    wget \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install zip intl mysqli

# Download and setup MediaWiki
ENV MEDIAWIKI_VERSION=1.41.1
RUN wget https://releases.wikimedia.org/mediawiki/1.41/mediawiki-$MEDIAWIKI_VERSION.tar.gz \
    && tar -xvzf mediawiki-$MEDIAWIKI_VERSION.tar.gz -C /var/www/html --strip-components=1 \
    && rm mediawiki-$MEDIAWIKI_VERSION.tar.gz

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy custom configuration if needed
# COPY LocalSettings.php /var/www/html/

# Expose port 80
EXPOSE 80

CMD ["apache2-foreground"]
