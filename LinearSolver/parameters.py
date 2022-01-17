"""
The Mining Problem parameters

Authors: Maciej Morawski, Kamil Wiłnicki  2022
"""
from dataclasses import dataclass


@dataclass
class Params:
    mines: list
    years: list
    K: int
    R: int
    M_const: int
    E_max: int
    u: dict
    x_max: dict
    j: dict
    w: dict
    c: float
    beta: float


def define_parameters():
    Params.mines = [
        "1",
        "2",
        "3",
        "4"
    ]
    Params.years = [
        "1",
        "2",
        "3",
        "4",
        "5"
    ]
    Params.K = 4
    Params.R = 5
    Params.M_const = 10
    Params.E_max = 3
    Params.u = {
        "1": 5.,
        "2": 4.,
        "3": 4.,
        "4": 5.
    }
    Params.x_max = {
        "1": 2.0,
        "2": 2.5,
        "3": 1.3,
        "4": 3.0
    }
    Params.j = {
        "1": 1.0,
        "2": 0.7,
        "3": 1.5,
        "4": 0.5
    }
    Params.w = {
        "1": 0.9,
        "2": 0.8,
        "3": 1.2,
        "4": 0.6,
        "5": 1.0
    }
    Params.c = 10.
    Params.beta = 0.9
    return Params
