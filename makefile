update-deps:
	#figure out pre-commit later
	#pre-commit autoupdate
	pip install --upgrade pip-tools pip wheel
	# editable or local install cannot check/verify hash
	#pip-compile --upgrade --resolver backtracking --generate-hashes -o requirements/main.txt pyproject.toml
	#pip-compile --extra dev --upgrade --resolver backtracking --generate-hashes -o requirements/dev.txt pyproject.toml
	pip-compile --upgrade --resolver backtracking -o requirements/main.txt pyproject.toml
	pip-compile --extra dev --upgrade --resolver backtracking -o requirements/dev.txt pyproject.toml


init:
	rm -rf .tox
	pip install --upgrade pip wheel
	pip install --upgrade -r requirements/main.txt -r requirements/dev.txt  -e .
	pip check

update: update-deps init

.PHONY: update-deps init update

