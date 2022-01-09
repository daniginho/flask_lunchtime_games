# flask_lunchtime_games

TODO:

* Dockerise the app
* Deploy to heroku
* Github actions.

## Viewing The App

Go to `http://127.0.0.1:5000`


## Setting up with pipenv and pyenv

```sh
export PIPENV_VENV_IN_PROJECT=1
pyenv install --list
pyenv install 3.9.2
pyenv local 3.9.2

# use virtualenv
virtualenv ./.venv

# or use pipenv to create virtual env.  
pipenv install --python $(pyenv which python)        
#pipenv --rm
```

```sh
# switching into venv 
pipenv shell
# or
source ./.venv/bin/activate

# install libraries
pip install -r requirements.txt

# after adding packages
pipenv lock -r > requirements.txt  
```

## Running The App

```bash
python main.py
```

## Docker

```sh
# build
docker build -t flask_lunchtime_games .

# run
docker run -p 5000:5000 flask_lunchtime_games   
```

## Heroku

```sh
# open heroku dashboard and create a lunchtimegames app.
open https://dashboard.heroku.com/
```

## Hardcoded user

User: guest@guest.com
PW: guestguest

