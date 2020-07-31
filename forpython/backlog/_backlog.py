import json

class CamelCaseToLower(object):
    def __init__(self):
        self.cache = {}
    def __call__(self,s):
        res = s.lower()
        if res in self.cache and self.cache[res]!=s:
            logging.error("collision")
        self.cache[res] = s
        return res
    def reverse(self,s):
        return self.cache[s]

class Stringer():
    MODES = ['pretty', 'json']
    def __init__(self):
        pass
    def set_format(self,mode):
        self._mode = mode
    def stringify_list(self,l):
        if self._mode == "json":
            return json.dumps([json.loads(self.stringify_object(i)) for i in l])
        elif self._mode == "pretty":
            return "\n".join([self.stringify_object(o) for o in l])
    def stringify_object(self,o):
        if self._mode == "json":
            return json.dumps(o.to_json_dict())
        elif self._mode == "pretty":
            return str(o)
