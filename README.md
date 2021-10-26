# Noldor API Docs
Noldor API Docs are powered by [Slate](https://github.com/slatedocs/slate) and hosted by [Github Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages)

## Development
* Build and view documentation in 2 ways:
  * Natively on local machine without using Docker by following Slate's instructions [here](https://github.com/slatedocs/slate/wiki/Using-Slate-Natively)
  * Using a Docker container by Slate's instructions [here](https://github.com/slatedocs/slate/wiki/Using-Slate-in-Docker)
* The Slate markdown is **not** edited directly and is generated from our OpenAPI spec through [widdershins](https://github.com/Mermade/widdershins). Instructions to generate the markdown [here](https://mermade.github.io/widdershins/ConvertingFilesBasicCLI.html).
* Merges into the `main` branch kicks off a build process that will generate and deploy the static web files to the `gh-pages` branch. Changes will then be viewable through https://noldor-technologies.github.io/api-docs/.
* Merges into the `dev` branch will deploy to the same `gh-pages` branch but under a `dev` directory. Changes are viewable through https://noldor-technologies.github.io/api-docs/dev
  ```
  widdershins --environment env.json swagger.json -o ./source/index.html.md
  ```