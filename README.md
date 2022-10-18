# An awsome project-proj-tmplt
a template for python package/project

# normal development steps
* create a virtual env and activate it
* update/pin dependence and install them into virtual env : `make update`
* let's code some brillian idea in `src/mmm/my_awsome_algorithm.py`, hacking..., sweeting..., debuging...
* Feel code is workign. Really? Let's test with some test cases in `test/test_my_awsome_algorithm.py` and then run `pytest` to see
* (yahoo, it works!) let's check in `git add src/mmm/my_awsome_algorithm.py test/test_my_awsome_algorithm.py` and commit (write a clear and helpful commit message!)
* everything is so nice. Let's package and \@shipit! (upload to testpypi repo, just for now)
```bash
python -m build
python -m twine upload repository testpypi dist/*
```
* tell some of your best friend and ask her to try it out: `pip install --index-url https://test/test.pypi.org/ your_aws_algorithm`
* profit!


# REF
* https://packaging.python.org/en/latest/tutorials/packaging-projects/
* https://github.com/pypa/hatch
* https://github.com/jazzband/pip-tools
* https://hynek.me/til/pip-tools-and-pyproject-toml/

