FROM nginx:1.25-alpine

# These ARGs have default but can be overridden with --build-arg flag
ARG BUILD_YEAR=2023
ENV BUILD_YEAR=${BUILD_YEAR}

ONBUILD RUN touch /parent-image-${BUILD_YEAR}.txt
