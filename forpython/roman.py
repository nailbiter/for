#!/Users/oleksiileontiev/anaconda3/bin/python3
import re;
import unittest;

def isRoman(s):
    pattern = '^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$';
    if(re.search(pattern,s)):
        return True;
    else:
        return False;
roman_numeral_map = (('M',  1000),
                     ('CM', 900),
                     ('D',  500),
                     ('CD', 400),
                     ('C',  100),
                     ('XC', 90),
                     ('L', 50),
                     ('XL', 40),
                     ('X', 10),
                     ('IX', 9),
                     ('V', 5),
                     ('IV', 4),
                     ('I', 1));
to_roman_table = [];
from_roman_table = {};
def to_roman(n):
    '''convert integer to Roman numeral'''
    result = '';
    MAX = 5000;
    if not (0<n<MAX):
        raise OutOfRangeError('number out of range (must be less than %d)'%(MAX));
    if not isinstance(n,int):
        raise NotIntegerError('non-integers can not be converted');
    if not(to_roman_table):
        build_lookup_tables();
    return to_roman_table[n];
    
def from_roman(s):
    '''convert Roman numeral to integer'''
    result = 0;
    index = 0;
        
    if not s:
        raise InvalidRomanNumeralError('input cannot be empty');
    if not isinstance(s,str):
        raise InvalidRomanNumeralError('Input must be a string');
    if not(from_roman_table):
        build_lookup_tables();
    if s not in from_roman_table:
        raise InvalidRomanNumeralError('Invalid Roman numeral: {0}'.format(s));
    return from_roman_table[s];
def build_lookup_tables():
    to_roman_table.append(None);
    def to_roman(n):
        result = '';
        for numeral, integer in roman_numeral_map:
            if n >= integer:
                result = numeral;
                n -= integer;
                break;
        if n > 0:
            result += to_roman_table[n];
        return result;
    
    for integer in range(1,5000):
        roman_numeral = to_roman(integer);
        to_roman_table.append(roman_numeral);
        from_roman_table[roman_numeral] = integer;
        
class OutOfRangeError(ValueError):
    pass;
class NotIntegerError(ValueError):
    pass;
class InvalidRomanNumeralError(ValueError):
    pass;
    
#test
class KnownValues(unittest.TestCase):
    known_values = ( (1, 'I'),
                     (2, 'II'),
                     (3999, 'MMMCMXCIX'),
                     (4000, 'MMMM'),
                     (4500, 'MMMMD'),
                     (4888, 'MMMMDCCCLXXXVIII'),
                     (4999, 'MMMMCMXCIX'),
                     (3, 'III'),
                     (4, 'IV'),
                     (5, 'V'),
                     (6, 'VI'),
                     (7, 'VII'),
                     (8, 'VIII'),
                     (9, 'IX'),
                     (10, 'X'),
                     (50, 'L'),
                     (100, 'C'),
                     (500, 'D'),
                     (1000, 'M'),
                     (31, 'XXXI'),
                     (148, 'CXLVIII'),
                     (294, 'CCXCIV'),
                     (312, 'CCCXII'),
                     (421, 'CDXXI'),
                     (528, 'DXXVIII'),
                     (621, 'DCXXI'),
                     (782, 'DCCLXXXII'),
                     (870, 'DCCCLXX'),
                     (941, 'CMXLI'),
                     (1043, 'MXLIII'),
                     (1110, 'MCX'),
                     (1226, 'MCCXXVI'),
                     (1301, 'MCCCI'),
                     (1485, 'MCDLXXXV'),
                     (1509, 'MDIX'),
                     (1607, 'MDCVII'),
                     (1754, 'MDCCLIV'),
                     (1832, 'MDCCCXXXII'),
                     (1993, 'MCMXCIII'),
                     (2074, 'MMLXXIV'),
                     (2152, 'MMCLII'),
                     (2212, 'MMCCXII'),
                     (2343, 'MMCCCXLIII'),
                     (2499, 'MMCDXCIX'),
                     (2574, 'MMDLXXIV'),
                     (2646, 'MMDCXLVI'),
                     (2723, 'MMDCCXXIII'),
                     (2892, 'MMDCCCXCII'),
                     (2975, 'MMCMLXXV'),
                     (3051, 'MMMLI'),
                     (3185, 'MMMCLXXXV'),
                     (3250, 'MMMCCL'),
                     (3313, 'MMMCCCXIII'),
                     (3408, 'MMMCDVIII'),
                     (3501, 'MMMDI'),
                     (3610, 'MMMDCX'),
                     (3743, 'MMMDCCXLIII'),
                     (3844, 'MMMDCCCXLIV'),
                     (3888, 'MMMDCCCLXXXVIII'),
                     (3940, 'MMMCMXL'),
                     (3999, 'MMMCMXCIX'));
    def test_to_roman_known_values(self):
        '''to_roman should give known result with known input'''
        for integer,numeral in self.known_values:
            result = to_roman(integer);
            self.assertEqual(numeral, result);
class ToRomanBadInput(unittest.TestCase):
    def test_too_large(self):
        '''to_roman should fail with large input'''
        self.assertRaises(OutOfRangeError, to_roman, 6000);
        self.assertRaises(OutOfRangeError, to_roman, 5000);
        self.assertRaises(OutOfRangeError, to_roman, 0);
        self.assertRaises(OutOfRangeError, to_roman, -1);
        #self.assertRaises(NotIntegerError, to_roman, 0.0);
    def test_non_integer(self):
        self.assertRaises(NotIntegerError, to_roman, 1.3);
class RoundtripCheck(unittest.TestCase):
    def test_roundtrip(self):
        '''from_roman(to_roman(n))==n for all n'''
        for integer in range(1,4000):
            numeral = to_roman(integer);
            result = from_roman(numeral);
            self.assertEqual(integer, result);
class FromRomanBadInput(unittest.TestCase):
    def test_too_many_repeated_numerals(self):
        '''from_roman should fail with too many repeated numerals'''
        for s in ('MMMMM', 'DD', 'CCCC', 'LL', 'XXXX', 'VV', 'IIII'):
            self.assertRaises(InvalidRomanNumeralError, from_roman, s);
    def test_repeated_pairs(self):
         '''from_roman should fail with repeated pairs of numerals'''
         for s in ('CM', 'CD', 'XC', 'XL', 'IX', 'IV'):
             self.assertRaises(InvalidRomanNumeralError, from_roman, s+s);
    def test_malformed_antecedents(self):
        '''from_roman should fail with malformed antecedents'''
        for s in ('IIMXCC', 'VX', 'DCM', 'CMM', 'IXIV',
                  'MCMC', 'XCX', 'IVI', 'LM', 'LD', 'LC'):
            self.assertRaises(InvalidRomanNumeralError, from_roman, s)
    def test_blank_input(self):
        '''test blank input'''
        self.assertRaises(InvalidRomanNumeralError, from_roman, '');
                
if __name__ == '__main__':
    unittest.main();
