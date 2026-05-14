# Docker

root@debian-13-4:~/docker-demo-2/dz-4# docker build -f ./Dockerfile -t test-nginx:0.0.2 .
[+] Building 3.2s (9/9) FINISHED                                                                                                                                                               docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                     0.1s
 => => transferring dockerfile: 190B                                                                                                                                                                     0.0s
 => [internal] load metadata for docker.io/library/nginx:alpine                                                                                                                                          0.3s
 => [internal] load .dockerignore                                                                                                                                                                        0.1s
 => => transferring context: 2B                                                                                                                                                                          0.0s
 => [1/4] FROM docker.io/library/nginx:alpine@sha256:feb6f75a08aa55b44576f98c15b8859819ecf54f3e4d2157f42c2d01cb58a3d2                                                                                    0.5s
 => => resolve docker.io/library/nginx:alpine@sha256:feb6f75a08aa55b44576f98c15b8859819ecf54f3e4d2157f42c2d01cb58a3d2                                                                                    0.4s
 => [internal] load build context                                                                                                                                                                        0.2s
 => => transferring context: 64B                                                                                                                                                                         0.0s
 => CACHED [2/4] WORKDIR /usr/share/nginx/html                                                                                                                                                           0.0s
 => CACHED [3/4] COPY ./default.conf /etc/nginx/conf.d/default.conf                                                                                                                                      0.0s
 => CACHED [4/4] ADD index.html .                                                                                                                                                                        0.0s
 => exporting to image                                                                                                                                                                                   1.0s
 => => exporting layers                                                                                                                                                                                  0.0s
 => => exporting manifest sha256:fd3316be9918b1deab8548ea4090449839a39f7c9d54b1e0586d8792802ff227                                                                                                        0.0s
 => => exporting config sha256:637774db33bd2c9fdb0eb55918f7f439afa2b3393fc1065968d043427ff550c4                                                                                                          0.0s
 => => exporting attestation manifest sha256:99395d1a23fa92376ec4e31d458cb04979b2f5eed899f294f5a0c97c1b78988f                                                                                            0.3s
 => => exporting manifest list sha256:4846ce584cc906c89c13c817ef71d0f5868ec389efab20e00ef008a843abb900                                                                                                   0.2s
 => => naming to docker.io/library/test-nginx:0.0.2                                                                                                                                                      0.0s
 => => unpacking to docker.io/library/test-nginx:0.0.2

 root@debian-13-4:~/docker-demo-2/dz-4# docker run -d --name my_dz2 -p 8081:80 test-nginx:0.0.2
2024616aa120362a8431422c8d40c2683f87f2254405cf795f9ccdc4cc555b80

root@debian-13-4:~/docker-demo-2/dz-4# docker ps
CONTAINER ID   IMAGE              COMMAND                  CREATED         STATUS         PORTS                                     NAMES
2024616aa120   test-nginx:0.0.2   "/docker-entrypoint.…"   8 seconds ago   Up 7 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   my_dz2

root@debian-13-4:~/docker-demo-2/dz-4# curl http://127.0.0.1:8081
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8" />
    <title>Страница с картинкой</title>
</head>
<body>
    <h1>Пример HTML с картинкой</h1>
    <img src="https://media.istockphoto.com/id/1317323736/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B2%D0%B8%D0%B4-%D0%BD%D0%B0-%D0%BD%D0%B5%D0%B1%D0%BE-%D0%BD%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D1%8C%D0%B5%D0%B2.jpg?s=1024x1024&w=is&k=20&c=rZW_73RK633KFChiUhBMrTDPkQGTxcM3d6p24HjL0Y8=" alt="Природная сцена" width="600" />
    <p>Это пример страницы, содержащей изображение.</p>
</body>
</html>
