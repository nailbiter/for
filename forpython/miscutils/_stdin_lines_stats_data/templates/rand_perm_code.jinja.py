import numpy as np
names = {{pre_names}}
{%if pre_sort-%}
names = sorted(names)
{%endif-%}
np.random.seed({{numpy_seed}})
print(np.random.permutation(names)) #{{res}}
