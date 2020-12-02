"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/trello/setup.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-02T11:50:26.910623
    REVISION: ---

==============================================================================="""

from setuptools import setup, find_packages


def get_install_requires(fn="requirements.txt"):
    with open(fn) as f:
        lines = f.readlines()
    lines = map(lambda s: s.strip(), lines)
    lines = filter(lambda s: not s.startswith("#"), lines)
    return list(lines)


setup(
    name='trello',
    version='1.0.1',
    py_modules=["trello"],
    packages=find_packages(include=["_trello"]),
    #package_data={'': ['templates/*.jinja.txt']},
    include_package_data=True,
    install_requires=get_install_requires(),
    entry_points='''
        [console_scripts]
        trello=trello:cli
    ''',
)
