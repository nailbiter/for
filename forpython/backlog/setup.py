from setuptools import setup

setup(
    name='backlog',
    version='0.1',
    py_modules=["backlog_cli",'backlog',"_backlog_types"],
    install_requires=[
        'Click',
    ],
    entry_points='''
        [console_scripts]
        backlog=backlog_cli:cli
    ''',
)
