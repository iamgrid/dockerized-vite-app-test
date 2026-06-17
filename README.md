# dockerized-vite-app-test

## Running dev
1. Start Docker Desktop _(Disable the "Only show running containers" toggle to see your previously used containers, though you don't need to start anything from here right now.)_
2. Open your Terminal and start Ubuntu on a new tab.
3. Go to **"~/Code/personal/dockerized-vite-app-test"**.
4. Run `code .` to open the project folder in VSCode.
5. Run `docker compose up`. _(To configure what happens on this command edit "docker-compose.yml" and "Dockerfile" located in the project root.)_
6. The Vite dev server will now be accessible in your browser at http://localhost:5173/

## Building prod
```
docker build --build-arg VITE_API_URL=http://localhost:1234/prod-api-url -f Dockerfile.prod -t dockerized-vite-app-test-prod .
```
To test the build:
```
docker run -p 80:80 dockerized-vite-app-test-prod
```
Then open http://localhost