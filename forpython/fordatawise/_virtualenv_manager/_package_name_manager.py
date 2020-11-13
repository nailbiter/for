"""===============================================================================

        FILE: fordatawise/_virtualenv_manager/_package_name_manager.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-06T11:50:10.943586
    REVISION: ---

TODO:
    1. split into two and move to separate module
    2. remove dependency on `gh`
    3. auto-remove from requirements.txt
==============================================================================="""

import logging
from _virtualenv_manager.system import system
from subprocess import getoutput


def _is_package_github(package_name):
    # if match(r"https://github.com/[^/]+/[^/]+/",package_name) is not None:
    return package_name.startswith("https://github.com")


def get_package_name_manager(package_name, *args, **kwargs):
    if _is_package_github(package_name):
        return GithubPackageNameManager(package_name, *args, **kwargs)
    else:
        return PackageNameManager(package_name, *args, **kwargs)


_PIP3 = "./venv/bin/pip3"


class PackageNameManager:
    def __init__(self, package_name, version=None):
        self._logger = logging.getLogger(self.__class__.__name__)
        self._package_name = package_name
        self._version = version

    def _get_package_name_for_pip(self):
        package_name, version = self._package_name, self._version
        if version is not None:
            raise NotImplementedError
        return package_name

    def install(self):
        package_name = self._get_package_name_for_pip()
        system(f"{_PIP3} install {package_name}")

    def save(self, requirements="requirements.txt"):
        system(f"touch {requirements}")
        package_name, version = self._package_name, self._version
        # FIXME: remove from file
        # FIXME: this can be done more robustly
        system(
            f"{_PIP3} freeze | grep -i \"{package_name}\" >> requirements.txt")
        print(f"added \"{package_name}\"")

    def uninstall(self):
        package_name, version = self._package_name, self._version
        _MODE = "github" if _is_package_github(
            package_name) else "package"
        if _MODE == "github":
            package_name = package_name.split("/")[-1]
        system(f"{_PIP3} uninstall -y {package_name}")


class GithubPackageNameManager(PackageNameManager):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        if self._version is None:
            self._version = getoutput(
                f"gh release list -R {self._package_name}").split("\n")[0].split("\t")[0].strip()
            self._logger.info(f"version: \"{self._version}\"")
    def save(self, requirements="requirements.txt"):
        system(f"touch {requirements}")
        package_name, version = self._package_name, self._version
        with open(requirements) as f:
            lines = f.readlines()

        if len([line for line in lines if package_name in line])>0:
            lines = [line.strip() for line in lines if package_name not in line]
            lines.append(f"{self._get_package_name_for_pip()}\n")
            with open(requirements,"w") as f:
                f.write("\n".join(lines))
        else:
            system(
                f"echo \"{self._get_package_name_for_pip()}\" >> requirements.txt")

        print(f"added \"{package_name}\"")
    def _get_package_name_for_pip(self):
        package_name, version = self._package_name, self._version
        package_name = package_name[len("https:"):]
        package_name = f"git+https:{package_name}@{version}"

        return package_name
