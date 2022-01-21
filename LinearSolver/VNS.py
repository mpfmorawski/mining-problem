"""
The Mining Problem VNS heuristic for solving problem with linear solver only

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""

import random
import itertools
import main
import time

# neighbourhood structures
def generate_neighbourhood(x):
    for k_set in range(1, K_MAX+1):
        N_k = []
        indices_list = list(range(SIZE))
        indices_combination = itertools.combinations(indices_list, k_set)
        for indices in indices_combination:
            N_k.append(swap_indices(x[:], indices))
        N.append(N_k)
    # print (N[0])


def swap_indices(v_old, indices_list):
    v_new = v_old
    for swap_index in indices_list:
        v_new[swap_index] = int(not v_new[swap_index])
    
    return v_new

# starting value of v
v_start = [
    1, 1, 1, 1, 1,
    0, 0, 0, 1, 1,
    1, 1, 1, 0, 1,
    1, 1, 0, 0, 0
]

SIZE = 20
ITERATION_COUNT = 3
K_MAX = 7
N = []

v_bis = None

start_time = time.process_time()

generate_neighbourhood(v_start)

for q in range(ITERATION_COUNT):
    
    k = 1

    while k < K_MAX:
        #Shaking
        v_prim = random.choice(N[k])
        v_prim_index = N[k].index(v_prim)

        with open('log.txt', 'a') as file:
            file.write("New v_prim: "+str(v_prim)+"\n")

        #Local Search (solve greedily with v_bis as a result)
        while True:
            solution_left = -1000
            solution_right = -1000
            solution = main.solve(v_prim)
            try:
                solution_left = main.solve(N[k][v_prim_index-1])
                solution_right = main.solve(N[k][v_prim_index+1])
            except IndexError:
                pass

            if solution_left > solution:
                v_prim_index = v_prim_index - 1
                v_prim = N[k][v_prim_index]
                with open('log.txt', 'a') as file:
                    file.write("Gone left\n----------\n")
            elif solution_right > solution:
                v_prim_index = v_prim_index + 1
                v_prim = N[k][v_prim_index]
                with open('log.txt', 'a') as file:
                    file.write("Gone right\n----------\n")
            else:
                v_bis = v_prim[:]
                with open('log.txt', 'a') as file:
                    file.write("New v_bis: "+str(v_bis)+"\n----------\n")
                break
        
        #Move or not
        if v_bis is not None:
            if main.solve(v_bis) > main.solve(v_start):
                v_start = v_bis[:]
                with open('log.txt', 'a') as file:
                    file.write("New v_start: "+str(v_start)+"\n---------------\n")
                k = 1
                generate_neighbourhood(v_start)
            else:
                k = k + 1
                with open('log.txt', 'a') as file:
                    file.write("Broadening neighbourhood\n---------------\n")

stop_time = time.process_time()

print("Best solution found:\n"+str(v_start))

total_time = float(stop_time - start_time)
print(total_time)
