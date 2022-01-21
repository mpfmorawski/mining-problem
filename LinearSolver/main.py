"""
The Mining Problem solution using Python and linear solver

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""

import pulp
import parameters
import copy

# Example for calculate_opened_from_operated demonstration
v_example = [
    [1, 1, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 0, 1, 1, 1],
    [1, 0, 0, 0, 1]
]

# Example for demonstration of solve as a separate function
v_example_a = [
    1, 1, 0, 0, 1,
    1, 0, 0, 0, 1,
    0, 0, 1, 1, 1,
    1, 0, 0, 0, 1
]


def calculate_opened_from_operated(v):
    y = [[0 for col in range(len(v[0]))] for row in range(len(v))]
    for k in range(len(v)):
        for r in range(len(v[k]) - 1):
            if v[k][r] == 1 or v[k][r + 1] == 1:
                y[k][r] = 1
        if v[k][-1] == 1:
            y[k][-1] = 1
    return y


def list_to_dict(input_list, params):
    output_dict = {}
    sub_dict = {}
    for mine in params.mines:
        for year in params.years:
            sub_dict[year] = input_list[int(mine)-1][int(year)-1]
        output_dict[mine] = copy.deepcopy(sub_dict)
    
    return output_dict


def solve(input_v):
    text_to_print = "Solving the Mining problem using a linear solver"

    # selection of a solver
    solver = pulp.PULP_CBC_CMD(mip=False)

    # creation of LP problem
    prob = pulp.LpProblem("The_Mining_Problem", pulp.LpMaximize)

    # parameters
    params = parameters.define_parameters()
    print(params)
    list_v = [input_v[len(params.years)*m:len(params.years)*m+len(params.years)] for m in range(len(params.mines))] #convert back to list of lists
    v = list_to_dict(list_v, params)
    print(v)
    list_y = calculate_opened_from_operated(list_v)
    y = list_to_dict(list_y, params)
    print(y)

    # variables
    x = pulp.LpVariable.dicts("minedOre", (params.mines, params.years), 0, None)

    # objective function
    prob += (
        pulp.lpSum([(params.beta ** (int(r) - 1)) * (params.c * x[k][r] - params.u[k] * y[k][r])
                    for (k, r) in [(k, r) for k in params.mines for r in params.years]]),
        "Income",
    )

    # constraints

    for k in params.mines:
        for r in params.years:
            prob += (
                x[k][r] <= params.M_const * v[k][r],
                "Determining if mine {0} is operated in {1}".format(k, r),
            )

    for r in params.years:
        prob += (
            pulp.lpSum(v[k][r] for k in params.mines) <= params.E_max,
            "Limitation on the maximum number of mines in {0} year ".format(r),
        )

    for k in params.mines:
        for r in params.years:
            prob += (
                x[k][r] <= params.x_max[k],
                "Upper limitation on the extraction of ore from a mine {0} in year {1}".format(k, r),
            )

    for k in params.mines:
        for r in params.years[:-1]:
            prob += (
                y[k][r] <= v[k][r] + v[k][str(int(r) + 1)],
                "Opened mine {0} in year {1} flag - constraint A".format(k, r),
            )

    for k in params.mines:
        for r in params.years[:-1]:
            prob += (
                y[k][r] >= v[k][r],
                "Opened mine {0} in year {1} flag - constraint B".format(k, r),
            )

    for k in params.mines:
        for r in params.years[:-1]:
            prob += (
                y[k][r] >= v[k][str(int(r) + 1)],
                "Opened mine {0} in year {1} flag - constraint C".format(k, r),
            )

    for k in params.mines:
        prob += (
            y[k][params.years[-1]] == v[k][params.years[-1]],
            "Opened mine {0} in year {1} flag - constraint D".format(k, params.years[-1]),
        )

    for r in params.years:
        prob += (
            pulp.lpSum(params.j[k] * x[k][r] for k in params.mines) ==
            pulp.lpSum(params.w[r] * x[k][r] for k in params.mines),
            "Limitation on the required quality of mixed ore in year {0}".format(r),
        )

    # The problem data is written to an .lp file
    prob.writeLP("Mining.lp")

    # The problem is solved using PuLP's choice of Solver
    prob.solve(solver)

    # The status of the solution is printed to the screen
    print("Status:", pulp.LpStatus[prob.status])

    # Show the solution
    for i in prob.variables():
        print(i.name, "=", i.varValue)

    # return goal function value
    print(prob.objective)
    return prob.objective.value()


if __name__ == "__main__":
    final_value = solve(v_example_a)
    print(final_value)
