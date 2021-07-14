#include <string>
#include <vector>
#include <assert.h>
#include <iostream>
#include "{{base}}.cpp"

int main(void) {
    {{base}} c;
    {%for tc in testdata.testdata%}
    {%set testcase_idx = loop.index0%}
    printf("start testcase #{{testcase_idx}}\n");
    {%for input in tc.input%}
    {%set testinput_idx = loop.index0%}
    {{util.get_cpp_type(input.type)}} tc{{testcase_idx}}i{{testinput_idx}} = {{util.get_cpp_initializer(input.type,input.value)}};
    {%endfor%}
    {{util.get_cpp_type(tc.output.type)}} expected_{{testcase_idx}} = {{util.get_cpp_initializer(tc.output.type,tc.output.value)}};
    {{util.get_cpp_type(tc.output.type)}} actual_{{testcase_idx}} = c.{{testdata.method}}({%for input in tc.input%}tc{{testcase_idx}}i{{loop.index0}}{{"," if not loop.last}}{%endfor%});
    {{util.get_cpp_print_to_stream("expected","expected_"+(testcase_idx|string),tc.output.type)}}
    {{util.get_cpp_print_to_stream("actual","actual_"+(testcase_idx|string),tc.output.type)}}
    printf("\n");
    assert(expected_{{testcase_idx}} == actual_{{testcase_idx}});
    {%endfor%}
    printf("all tests passed!\n");
    return 0;
}
