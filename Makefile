.PHONY: coverage docs flakes cloc
	
coverage:
	-coverage run --timid --source=iris -m py.test iris
	coverage html

docs:
	cd docs && make html

flakes:
	@flake8 iris | cat

cloc:
	@cloc --quiet iris

