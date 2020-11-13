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
import logging
import unittest
{%-set basename = os.path.splitext(os.path.split(filename)[-1])[0]%}


class {{converters.snake_to_camel(basename)}}(unittest.TestCase):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self._logger = logging.getLogger(self.__class__.__name__)

    def test_something(self):
        self.assertTrue(1 == 1)
        self.assertEqual(1, 1)
        self.assertNotEqual(1, 2)
