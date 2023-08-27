setup:
	# Create python virtualenv & source it
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

install:
	# This should be run from inside a virtualenv
	 python -m pip install --upgrade pip &&\
		pip install -r requirements.txt

test_run:
	# Additional, optional, tests could go here
	 pytest testCase/*.py
	# python -m pytest --nbval notebook.ipynbgit stat

lint:
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	# pylint --disable=R,C,W1203,W1202 app.py
	pylint --disable=R,C,W1203,W1202 app.py
	

docker_lint:
	# See local hadolint install instructions: https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile

all: install lint test_run