"""
The Mining Problem solution using linear solver

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""

import pulp
from dataclasses import dataclass


@dataclass
class Params:
    mines: list
    years: list
    M_const: int
    E_max: int
    u: list
    x_max: list
    j: list
    w: list
    c: float
    beta: float


def define_parameters():
    Params.mines = ["1",
                    "2",
                    "3",
                    "4"]

    Params.years = ["1",
                    "2",
                    "3",
                    "4",
                    "5"]

    Params.M_const = 10

    Params.E_max = 3

    Params.u = [5.,
                4.,
                4.,
                5.]

    Params.x_max = [2.0,
                    2.5,
                    1.3,
                    3.0]

    Params.j = [1.0,
                0.7,
                1.5,
                0.5]

    Params.w = [0.9,
                0.8,
                1.2,
                0.6,
                1.0]

    Params.c = 10.

    Params.beta = 0.9

    return Params


def main():
    text_to_print = "Solving the Mining problem using a linear solver"
    params = define_parameters()
    print(params)


if __name__ == "__main__":
    main()
