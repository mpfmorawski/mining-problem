"""
The Mining Problem solution using linear solver

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""

import pulp
import parameters


def main():
    text_to_print = "Solving the Mining problem using a linear solver"

    # creation of LP problem
    prob = pulp.LpProblem("The_Mining_Problem", pulp.LpMaximize)

    # parameters
    params = parameters.define_parameters()
    print(params)

    # variables
    x = pulp.LpVariable.dicts("minedOre", (params.mines, params.years), 0, None)
    v = pulp.LpVariable.dicts("flagIfOreExtracted", (params.mines, params.years), 0, 1)
    y = pulp.LpVariable.dicts("flagIfMineActive", (params.mines, params.years), 0, 1)

    # objective function
    prob += (
        pulp.lpSum([(params.beta ** (int(r)-1)) * (params.c * x[k][r] - params.u[k] * y[k][r])
                    for (k, r) in [(k, r) for k in params.mines for r in params.years]]),
        "Income",
    )

    # constraints


    # The problem data is written to an .lp file
    prob.writeLP("Mining.lp")

    # The problem is solved using PuLP's choice of Solver
    prob.solve()

    # The status of the solution is printed to the screen
    print("Status:", pulp.LpStatus[prob.status])

    # Show the solution
    for i in prob.variables():
        print(i.name, "=", i.varValue)


if __name__ == "__main__":
    main()
