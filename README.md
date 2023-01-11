# Fastapi Web Starter

Updated: 2023-01-11

## Overview

A static simple website ready to deploy.
This repo includes all the file and it is ready to deploy to Heroku.
[How to Deploy a FastAPI App on Heroku for Free](https://towardsdatascience.com/how-to-deploy-your-fastapi-app-on-heroku-for-free-8d4271a4ab9)

- .env
- .gitignore
- app
- Procfile
- README.md
- requirements.txt
- runtime.txt
- static
- templates

## Requirement

See requirements.txt for updates.

```sh
requests==2.27.1
fastapi==0.72.0
uvicorn==0.17.0
python-dotenv==0.19.2
aiofiles==0.8.0
python-multipart==0.0.5
jinja2==3.0.3
Markdown==3.3.6
pytest==6.2.5
```

## Installation & Usage

Run locally...

```bash
$ cd autoblog-manager
# run executable (Linux/Unix)
$ sh run.sh --reload --port 8080
# run executable (Windows)
$ run.bat
```

Visit [http://127.0.0.1:8080/](http://127.0.0.1:8080/).

## Features

- Menu
- Unsplash
- Accordion
- Markdown pages

## Test

All tests are under `tests` directory.

```bash
# Change the directory
$ cd autoblog-manager
# Run tests (Unix/Linux)
$ sh test.sh
# or (Windows)
$ test.bat
# or
$ pytest -v
```

## Executing on Heroku

```bash
$ heroku login
$ heroku create
# Push to Heroku
$ git push heroku main
# opens your project in your browser
$ heroku open
# Done... Some helpful commands
# View app process
$ heroic ps
# Rename app
$ heroku apps:rename new_app_name
# ssh into Heroku
$ heroku ps:exec
```



## Licence

【MIT License】

Copyright 2021 Shinichi Okada

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.