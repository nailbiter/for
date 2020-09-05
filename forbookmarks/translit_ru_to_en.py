#!/usr/bin/env python3
from sys import stdin
from transliterate import translit

print(translit(stdin.read(),"ru",reversed=True))
