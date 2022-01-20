"""
The Mining Problem VNS heuristic for problem solving with linear solver only

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""

import random
import itertools
import main

#neighbourhood structures
def generate_neighbourhood(x):
    for k_set in range(1, K_MAX+1):
        N_k = []
        indices_list = list(range(SIZE))
        indices_combination = itertools.combinations(indices_list, k_set)
        for indices in indices_combination:
            N_k.append(swap_indices(x[:], indices))
        N.append(N_k)
    #print (N[0])

def swap_indices(v_old, indices_list):
    v_new = v_old
    for swap_index in indices_list:
        v_new[swap_index] = int(not v_new[swap_index])
    
    return v_new

#starting value of v 
v_start = [
    1, 1, 0, 0, 1,
    1, 0, 0, 0, 1,
    0, 0, 1, 1, 1,
    1, 0, 0, 0, 1
]

SIZE = 20
K_MAX = 7
N = []

k = 1
v_bis = []

generate_neighbourhood(v_start)

while k < K_MAX:
    #v_prim_index = N[k].index(random.choice(N[k]))
    #v_prim = N[k][v_prim_index]

    v_prim = random.choice(N[k])
    #print(v_prim)
    v_prim_index = N[k].index(v_prim)

    #solve greedily with result v_bis
    if N[k][v_prim_index-1] is not None and main.solve(N[k][v_prim_index-1]) > main.solve(v_prim):
        v_prim_index = v_prim_index - 1
        v_prim = N[k][v_prim_index]
    elif N[k][v_prim_index+1] is not None and main.solve(N[k][v_prim_index+1]) > main.solve(v_prim):
        v_prim_index = v_prim_index + 1
        v_prim = N[k][v_prim_index]
    else:
        v_bis = v_prim[:]

    if main.solve(v_bis) > main.solve(v_start):
        v_start = v_bis[:]
        k = 1
        print("generate neighbourhood")
        generate_neighbourhood(v_start)
    else:
        k = k + 1
        print("increment")

print(v_bis)
