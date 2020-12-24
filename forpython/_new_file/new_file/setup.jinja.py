"""===============================================================================

        FILE: {{filename}}

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev ({{email}})
ORGANIZATION: {{organization}}
     VERSION: ---{#0.0.1#}
     CREATED: {{now.isoformat()}}
    REVISION: ---

==============================================================================="""
{%-set basename = converters.kebab_to_camel(os.path.split(os.path.split(os.path.abspath(filename))[0])[1])%}

from setuptools import setup, find_packages


def get_install_requires(fn="requirements.txt"):
    with open(fn) as f:
        lines = f.readlines()
    lines = map(lambda s: s.strip(), lines)
    lines = filter(lambda s: not s.startswith("#"), lines)
    return list(lines)

with open(".version.txt") as f:
    version = f.read().strip()

setup(
    name='{{basename}}',
    version=version,
    py_modules=[],
    packages=find_packages(
        include=["{{basename}}"],
        # exclude=["bin"]
    ),
    install_requires=get_install_requires(),
    #    entry_points='''
    #        [console_scripts]
    #        acomposer2=acomposer2:cli
    #    ''',
)
