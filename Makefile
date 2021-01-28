install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval	notebook.ipnb

lint:
	pylint --disable=R,C flask_starter.py

all: install lint test
