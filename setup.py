from setuptools import setup, find_packages

setup(
    name='myegg',
    version='1.0.0',
    install_requires=[
    ],
    packages=find_packages(exclude=['tests']),
    entry_points={
        'console_scripts': [
            'myegg = myegg.commands:run'
        ]
    },
    test_suite='tests'
)
