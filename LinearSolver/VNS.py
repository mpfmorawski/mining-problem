"""
The Mining Problem VNS heuristic for problem solving with linear solver only

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""

import random
import itertools

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
k = 1

#neighbourhood structures
N = []

for k_set in range(1, K_MAX+1):
    N_k = []
    indices_list = list(range(SIZE))
    indices_combination = itertools.combinations(indices_list, k_set)
    for indices in indices_combination:
        N_k.append(swap_indices(v_start[:], indices))
    N.append(N_k)
    
#print (N[0])

#while k == K_MAX:
    
'''
import parameters

params = parameters.define_parameters()

def best_improvement(x):
    while solve(x) > solve(x_a):
        x_a = x
        x = argmin(N(X)) #argmin in current neighbourhood
    return x_a


kmax=5
def VNS(x):
    for k in range(kmax):
        #shake

        #bestimprovement

        # neighbourhoodChange
        print("vns")
'''
