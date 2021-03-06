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
    v = pulp.LpVariable.dicts("flagIfOreExtracted", (params.mines, params.years), 0, 1, pulp.LpInteger)
    y = pulp.LpVariable.dicts("flagIfMineActive", (params.mines, params.years), 0, 1, pulp.LpInteger)

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
                y[k][r] <= v[k][r] + v[k][str(int(r)+1)],
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
                y[k][r] >= v[k][str(int(r)+1)],
                "Opened mine {0} in year {1} flag - constraint C".format(k, r),
            )

    for k in params.mines:
        prob += (
            y[k][params.years[-1]] == v[k][params.years[-1]],
            "Opened mine {0} in year {1} flag - constraint D".format(k, params.years[-1]),
            )

    for r in params.years:
        prob += (
            pulp.lpSum(params.j[k]*x[k][r] for k in params.mines) ==
            pulp.lpSum(params.w[r]*x[k][r] for k in params.mines),
            "Limitation on the required quality of mixed ore in year {0}".format(r),
            )

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
