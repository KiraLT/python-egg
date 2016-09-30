# python-egg
Python base egg with developer environment

---

## setup.py

The setup script is the centre of all activity in building, distributing, and installing modules using the [Distutils](https://docs.python.org/2/distutils/setupscript.html) or enchanted version- [setuptools](http://setuptools.readthedocs.io/en/latest/setuptools.html). We will use setuptools couse it is better.

Setuptools example:

```python
from setuptools import setup, find_packages
setup(
    name='myegg',
    version='1.0.0',
    install_requires=[
    ],
    packages=find_packages(exclude='test'),
    entry_points={
        'console_scripts': [
            'myegg = myegg.commands:run'
        ]
    },
    test_suite='tests'
)
```

**name** - your package name, **don't forget to rename `myapp` directory** if you change package name in config

**version** - used for package versioning, in most case you won't need to specify it

**install_requires** - list of [python dependencies](https://pypi.python.org/pypi)

**packages** - let setuptools find sub packages automaticaly (e.g. myapp.helpers, myapp.apps.hello)

**entry_points** - generate custom bin script, in this example it will generate `bin/myegg` bash script which will execute `run` function from myegg.commands

**test_suite** - run tests from tests package

---

## Tests

Python egg has a great [Unit tests](https://docs.python.org/2/library/unittest.html) support. It will automaticaly find and run tests from `tests` package.

### Runnning tests

**With bash script:**

`./test.sh`

**Manually:**

`python setup.py test`

## Install in develop mode

You can install your egg localy in developer mode. Then you will be able to frequently edit your code and not have to re-install your package to run it.

**Installation required virtualenv:**

`pip install virtualenv`

**With bash script:**

`./install.sh`

**Manually:**

`virtualenv -p python`
`bin/python setup.py develop`

**Not you can use bin scripts from `entry_points`:**

`bin/myapp`

> 'HELLO WORLD'

## Python 3

For bash script to use python 3 change `python.txt` content to `python3`




