# Noldor API Docs
Noldor API Docs are powered both by [Slate](https://github.com/slatedocs/slate) and [Swagger UI](https://github.com/swagger-api/swagger-ui), and are hosted on [Github Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages).

## Development
* Build locally with Docker.
  ```
  docker build . -t noldor/api-docs
  docker run --rm --name noldor_api-docs -p 4567:4567 -v `pwd`/build:/srv/slate/build noldor/api-docs serve
  ```
  View the Slate docs at http://localhost:4567. The Swagger UI can viewed at http://localhost:4567/swagger/
* For API changes, update the OpenAPI spec (`source/openapi.json`) and run the following Docker command to copy the file into the container and regenerate the Slate markdown. Slate markdown is **not** edited directly and is generated from our OpenAPI spec.
  ```
  docker cp source noldor_api-docs:/srv/slate/ && docker exec -it noldor_api-docs widdershins --environment ./source/env.json ./source/openapi.json -o ./source/index.html.md
  ```
  Use [stoplight.io](https://stoplight.io/) as a graphical UI to edit OpenAPI spec.
* Merges into the `main` branch kicks off a build process that will generate and deploy the static web files to the `gh-pages` branch. Changes will then be viewable through https://noldor-technologies.github.io/api-docs/.