FROM my-template-image

RUN mkdir -p /tmp/nginx && \
    ls -lh /parent-image-${BUILD_YEAR}.txt && \
    echo "All good!"

COPY ./html /usr/share/nginx/html
COPY ./*.conf /etc/nginx/conf.d/
