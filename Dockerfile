FROM nginx:alpine

# Hapus file default dari nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file dari folder ini
COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
