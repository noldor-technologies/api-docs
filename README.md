# Noldor API Docs
Noldor API Docs are powered by [Slate](https://github.com/slatedocs/slate) and hosted by [Github Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages)

## Development
* Build and view documentation in 2 ways:
  * Natively on local machine without using Docker by following Slate's instructions [here](https://github.com/slatedocs/slate/wiki/Using-Slate-Natively)
  * Using a Docker container by Slate's instructions [here](https://github.com/slatedocs/slate/wiki/Using-Slate-in-Docker)
* The Slate markdown is **not** edited directly and is generated from our OpenAPI spec through [widdershins](https://github.com/Mermade/widdershins). Instructions to generate the Slate markdown [here](https://mermade.github.io/widdershins/ConvertingFilesBasicCLI.html).
  * Use [stoplight.io](https://stoplight.io/) as a graphical UI to edit OpenAPI spec
* Merges into the `main` branch kicks off a build process that will generate and deploy the static web files to the `gh-pages` branch. Changes will then be viewable through https://noldor-technologies.github.io/api-docs/.
  ```
  widdershins --environment env.json openapi.json -o ./source/index.html.md
  ```