# dockerized-vite-app-test

## Running dev
```
docker compose up
```

## Building prod
```
docker build -f Dockerfile.prod -t dockerized-vite-app-test-prod .
```
To test the build:
```
docker run -p 80:80 dockerized-vite-app-test-prod
```
Then open http://localhost