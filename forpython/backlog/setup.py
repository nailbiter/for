from setuptools import setup

setup(
    name='backlog',
    version='0.1',
    py_modules=['backlog'],
    install_requires=[
        'Click',
    ],
    entry_points='''
        [console_scripts]
        backlog=backlog:cli
    ''',
)
