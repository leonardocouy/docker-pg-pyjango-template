This is a template for Django projects with Docker.

## What is this?

A Docker environment ready to run your new/existing Django project.

**Goals**

- :construction: Isolate your development environment (no venv, no conda);
- :stuck_out_tongue_closed_eyes: No headaches with environment (install postgres, psycopg);
- :smiling_imp: Efficient (Just clone and run the command);
- :running: Lightweight (Alpine Linux);
- :evergreen_tree: Ready to run Django projects with PostgreSQL;
- :snake: Python 3.

## How to use?
If you want to create a new project, you should follow these steps:

### Creating a new project

If you want to create a new project, you should follow these steps:

1. Clone this repo
```bash
https://github.com/leonardocouy/docker-pg-pyjango-template.git
```
2. Go to directory containing the repo (`cd`)
3. Give permission to `create-project.sh`
```bash
chmod +x create-project.sh
```
4. Now, just run:
```bash
./create-project.sh app-name
```
5. Be happy :)

### Using with an existing project

You have two ways:

- :red_circle: Copy your project into this dir.
- :large_blue_circle: Copy this template to your project.

Choose one and go to Running project section!

OBS 1: **If you use multiple requirements or a folder to save your requirements, consider to change Dockerfile**
OBS 2: **Your requirements must contains Django and Psycopg2**

### Running your project

If you reach here, you're amazing!!!! :shipit:

#### Manage your environments variables with .env

This template comes with template .env file. **I recommend you to store your environments variables in this file**,
By default, docker-compose is looking for your environments variables stored at .env file

Attention:
- :warning: **Rename .env.template to .env**
- :warning: **YOU MUST NOT COMMIT THIS FILE!!! (By default, this file is included in .gitignore)**

#### Run server
Now, just you run this:

```bash
docker-compose up
```

### Running other commands

When you need to run a python/django command, you may run this command:

```bash
$ docker-compose run web <command>
$ docker-compose run web ./manage.py syncdb
```

## Contact
Built with :heart: by **Leonardo Flores (contato@leonardocouy.com)**
