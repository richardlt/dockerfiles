# dockerfiles

docker-rmeditor
    link: redis -> docker run  -v ...:/data --name some-redis -d redis redis-server --appendonly yes

    start: docker run -d -p 8000:8000 --link redis:redis richardleterrier/rmeditor
