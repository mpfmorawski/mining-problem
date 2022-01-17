\* The_Mining_Problem *\
Maximize
Income: - 5 flagIfMineActive_1_1 - 4.5 flagIfMineActive_1_2
 - 4.05 flagIfMineActive_1_3 - 3.645 flagIfMineActive_1_4
 - 3.2805 flagIfMineActive_1_5 - 4 flagIfMineActive_2_1
 - 3.6 flagIfMineActive_2_2 - 3.24 flagIfMineActive_2_3
 - 2.916 flagIfMineActive_2_4 - 2.6244 flagIfMineActive_2_5
 - 4 flagIfMineActive_3_1 - 3.6 flagIfMineActive_3_2
 - 3.24 flagIfMineActive_3_3 - 2.916 flagIfMineActive_3_4
 - 2.6244 flagIfMineActive_3_5 - 5 flagIfMineActive_4_1
 - 4.5 flagIfMineActive_4_2 - 4.05 flagIfMineActive_4_3
 - 3.645 flagIfMineActive_4_4 - 3.2805 flagIfMineActive_4_5 + 10 minedOre_1_1
 + 9 minedOre_1_2 + 8.1 minedOre_1_3 + 7.29 minedOre_1_4 + 6.561 minedOre_1_5
 + 10 minedOre_2_1 + 9 minedOre_2_2 + 8.1 minedOre_2_3 + 7.29 minedOre_2_4
 + 6.561 minedOre_2_5 + 10 minedOre_3_1 + 9 minedOre_3_2 + 8.1 minedOre_3_3
 + 7.29 minedOre_3_4 + 6.561 minedOre_3_5 + 10 minedOre_4_1 + 9 minedOre_4_2
 + 8.1 minedOre_4_3 + 7.29 minedOre_4_4 + 6.561 minedOre_4_5
Subject To
Determining_if_mine_1_is_operated_in_1: - 10 flagIfOreExtracted_1_1
 + minedOre_1_1 <= 0
Determining_if_mine_1_is_operated_in_2: - 10 flagIfOreExtracted_1_2
 + minedOre_1_2 <= 0
Determining_if_mine_1_is_operated_in_3: - 10 flagIfOreExtracted_1_3
 + minedOre_1_3 <= 0
Determining_if_mine_1_is_operated_in_4: - 10 flagIfOreExtracted_1_4
 + minedOre_1_4 <= 0
Determining_if_mine_1_is_operated_in_5: - 10 flagIfOreExtracted_1_5
 + minedOre_1_5 <= 0
Determining_if_mine_2_is_operated_in_1: - 10 flagIfOreExtracted_2_1
 + minedOre_2_1 <= 0
Determining_if_mine_2_is_operated_in_2: - 10 flagIfOreExtracted_2_2
 + minedOre_2_2 <= 0
Determining_if_mine_2_is_operated_in_3: - 10 flagIfOreExtracted_2_3
 + minedOre_2_3 <= 0
Determining_if_mine_2_is_operated_in_4: - 10 flagIfOreExtracted_2_4
 + minedOre_2_4 <= 0
Determining_if_mine_2_is_operated_in_5: - 10 flagIfOreExtracted_2_5
 + minedOre_2_5 <= 0
Determining_if_mine_3_is_operated_in_1: - 10 flagIfOreExtracted_3_1
 + minedOre_3_1 <= 0
Determining_if_mine_3_is_operated_in_2: - 10 flagIfOreExtracted_3_2
 + minedOre_3_2 <= 0
Determining_if_mine_3_is_operated_in_3: - 10 flagIfOreExtracted_3_3
 + minedOre_3_3 <= 0
Determining_if_mine_3_is_operated_in_4: - 10 flagIfOreExtracted_3_4
 + minedOre_3_4 <= 0
Determining_if_mine_3_is_operated_in_5: - 10 flagIfOreExtracted_3_5
 + minedOre_3_5 <= 0
Determining_if_mine_4_is_operated_in_1: - 10 flagIfOreExtracted_4_1
 + minedOre_4_1 <= 0
Determining_if_mine_4_is_operated_in_2: - 10 flagIfOreExtracted_4_2
 + minedOre_4_2 <= 0
Determining_if_mine_4_is_operated_in_3: - 10 flagIfOreExtracted_4_3
 + minedOre_4_3 <= 0
Determining_if_mine_4_is_operated_in_4: - 10 flagIfOreExtracted_4_4
 + minedOre_4_4 <= 0
Determining_if_mine_4_is_operated_in_5: - 10 flagIfOreExtracted_4_5
 + minedOre_4_5 <= 0
Limitation_on_the_maximum_number_of_mines_in_1_year_: flagIfOreExtracted_1_1
 + flagIfOreExtracted_2_1 + flagIfOreExtracted_3_1 + flagIfOreExtracted_4_1
 <= 3
Limitation_on_the_maximum_number_of_mines_in_2_year_: flagIfOreExtracted_1_2
 + flagIfOreExtracted_2_2 + flagIfOreExtracted_3_2 + flagIfOreExtracted_4_2
 <= 3
Limitation_on_the_maximum_number_of_mines_in_3_year_: flagIfOreExtracted_1_3
 + flagIfOreExtracted_2_3 + flagIfOreExtracted_3_3 + flagIfOreExtracted_4_3
 <= 3
Limitation_on_the_maximum_number_of_mines_in_4_year_: flagIfOreExtracted_1_4
 + flagIfOreExtracted_2_4 + flagIfOreExtracted_3_4 + flagIfOreExtracted_4_4
 <= 3
Limitation_on_the_maximum_number_of_mines_in_5_year_: flagIfOreExtracted_1_5
 + flagIfOreExtracted_2_5 + flagIfOreExtracted_3_5 + flagIfOreExtracted_4_5
 <= 3
Limitation_on_the_required_quality_of_mixed_ore_in_year_1: 0.1 minedOre_1_1
 - 0.2 minedOre_2_1 + 0.6 minedOre_3_1 - 0.4 minedOre_4_1 = 0
Limitation_on_the_required_quality_of_mixed_ore_in_year_2: 0.2 minedOre_1_2
 - 0.1 minedOre_2_2 + 0.7 minedOre_3_2 - 0.3 minedOre_4_2 = 0
Limitation_on_the_required_quality_of_mixed_ore_in_year_3: - 0.2 minedOre_1_3
 - 0.5 minedOre_2_3 + 0.3 minedOre_3_3 - 0.7 minedOre_4_3 = 0
Limitation_on_the_required_quality_of_mixed_ore_in_year_4: 0.4 minedOre_1_4
 + 0.1 minedOre_2_4 + 0.9 minedOre_3_4 - 0.1 minedOre_4_4 = 0
Limitation_on_the_required_quality_of_mixed_ore_in_year_5: 0 minedOre_1_5
 - 0.3 minedOre_2_5 + 0.5 minedOre_3_5 - 0.5 minedOre_4_5 = 0
Opened_mine_1_in_year_1_flag___constraint_A: flagIfMineActive_1_1
 - flagIfOreExtracted_1_1 - flagIfOreExtracted_1_2 <= 0
Opened_mine_1_in_year_1_flag___constraint_B: flagIfMineActive_1_1
 - flagIfOreExtracted_1_1 >= 0
Opened_mine_1_in_year_1_flag___constraint_C: flagIfMineActive_1_1
 - flagIfOreExtracted_1_2 >= 0
Opened_mine_1_in_year_2_flag___constraint_A: flagIfMineActive_1_2
 - flagIfOreExtracted_1_2 - flagIfOreExtracted_1_3 <= 0
Opened_mine_1_in_year_2_flag___constraint_B: flagIfMineActive_1_2
 - flagIfOreExtracted_1_2 >= 0
Opened_mine_1_in_year_2_flag___constraint_C: flagIfMineActive_1_2
 - flagIfOreExtracted_1_3 >= 0
Opened_mine_1_in_year_3_flag___constraint_A: flagIfMineActive_1_3
 - flagIfOreExtracted_1_3 - flagIfOreExtracted_1_4 <= 0
Opened_mine_1_in_year_3_flag___constraint_B: flagIfMineActive_1_3
 - flagIfOreExtracted_1_3 >= 0
Opened_mine_1_in_year_3_flag___constraint_C: flagIfMineActive_1_3
 - flagIfOreExtracted_1_4 >= 0
Opened_mine_1_in_year_4_flag___constraint_A: flagIfMineActive_1_4
 - flagIfOreExtracted_1_4 - flagIfOreExtracted_1_5 <= 0
Opened_mine_1_in_year_4_flag___constraint_B: flagIfMineActive_1_4
 - flagIfOreExtracted_1_4 >= 0
Opened_mine_1_in_year_4_flag___constraint_C: flagIfMineActive_1_4
 - flagIfOreExtracted_1_5 >= 0
Opened_mine_1_in_year_5_flag___constraint_D: flagIfMineActive_1_5
 - flagIfOreExtracted_1_5 = 0
Opened_mine_2_in_year_1_flag___constraint_A: flagIfMineActive_2_1
 - flagIfOreExtracted_2_1 - flagIfOreExtracted_2_2 <= 0
Opened_mine_2_in_year_1_flag___constraint_B: flagIfMineActive_2_1
 - flagIfOreExtracted_2_1 >= 0
Opened_mine_2_in_year_1_flag___constraint_C: flagIfMineActive_2_1
 - flagIfOreExtracted_2_2 >= 0
Opened_mine_2_in_year_2_flag___constraint_A: flagIfMineActive_2_2
 - flagIfOreExtracted_2_2 - flagIfOreExtracted_2_3 <= 0
Opened_mine_2_in_year_2_flag___constraint_B: flagIfMineActive_2_2
 - flagIfOreExtracted_2_2 >= 0
Opened_mine_2_in_year_2_flag___constraint_C: flagIfMineActive_2_2
 - flagIfOreExtracted_2_3 >= 0
Opened_mine_2_in_year_3_flag___constraint_A: flagIfMineActive_2_3
 - flagIfOreExtracted_2_3 - flagIfOreExtracted_2_4 <= 0
Opened_mine_2_in_year_3_flag___constraint_B: flagIfMineActive_2_3
 - flagIfOreExtracted_2_3 >= 0
Opened_mine_2_in_year_3_flag___constraint_C: flagIfMineActive_2_3
 - flagIfOreExtracted_2_4 >= 0
Opened_mine_2_in_year_4_flag___constraint_A: flagIfMineActive_2_4
 - flagIfOreExtracted_2_4 - flagIfOreExtracted_2_5 <= 0
Opened_mine_2_in_year_4_flag___constraint_B: flagIfMineActive_2_4
 - flagIfOreExtracted_2_4 >= 0
Opened_mine_2_in_year_4_flag___constraint_C: flagIfMineActive_2_4
 - flagIfOreExtracted_2_5 >= 0
Opened_mine_2_in_year_5_flag___constraint_D: flagIfMineActive_2_5
 - flagIfOreExtracted_2_5 = 0
Opened_mine_3_in_year_1_flag___constraint_A: flagIfMineActive_3_1
 - flagIfOreExtracted_3_1 - flagIfOreExtracted_3_2 <= 0
Opened_mine_3_in_year_1_flag___constraint_B: flagIfMineActive_3_1
 - flagIfOreExtracted_3_1 >= 0
Opened_mine_3_in_year_1_flag___constraint_C: flagIfMineActive_3_1
 - flagIfOreExtracted_3_2 >= 0
Opened_mine_3_in_year_2_flag___constraint_A: flagIfMineActive_3_2
 - flagIfOreExtracted_3_2 - flagIfOreExtracted_3_3 <= 0
Opened_mine_3_in_year_2_flag___constraint_B: flagIfMineActive_3_2
 - flagIfOreExtracted_3_2 >= 0
Opened_mine_3_in_year_2_flag___constraint_C: flagIfMineActive_3_2
 - flagIfOreExtracted_3_3 >= 0
Opened_mine_3_in_year_3_flag___constraint_A: flagIfMineActive_3_3
 - flagIfOreExtracted_3_3 - flagIfOreExtracted_3_4 <= 0
Opened_mine_3_in_year_3_flag___constraint_B: flagIfMineActive_3_3
 - flagIfOreExtracted_3_3 >= 0
Opened_mine_3_in_year_3_flag___constraint_C: flagIfMineActive_3_3
 - flagIfOreExtracted_3_4 >= 0
Opened_mine_3_in_year_4_flag___constraint_A: flagIfMineActive_3_4
 - flagIfOreExtracted_3_4 - flagIfOreExtracted_3_5 <= 0
Opened_mine_3_in_year_4_flag___constraint_B: flagIfMineActive_3_4
 - flagIfOreExtracted_3_4 >= 0
Opened_mine_3_in_year_4_flag___constraint_C: flagIfMineActive_3_4
 - flagIfOreExtracted_3_5 >= 0
Opened_mine_3_in_year_5_flag___constraint_D: flagIfMineActive_3_5
 - flagIfOreExtracted_3_5 = 0
Opened_mine_4_in_year_1_flag___constraint_A: flagIfMineActive_4_1
 - flagIfOreExtracted_4_1 - flagIfOreExtracted_4_2 <= 0
Opened_mine_4_in_year_1_flag___constraint_B: flagIfMineActive_4_1
 - flagIfOreExtracted_4_1 >= 0
Opened_mine_4_in_year_1_flag___constraint_C: flagIfMineActive_4_1
 - flagIfOreExtracted_4_2 >= 0
Opened_mine_4_in_year_2_flag___constraint_A: flagIfMineActive_4_2
 - flagIfOreExtracted_4_2 - flagIfOreExtracted_4_3 <= 0
Opened_mine_4_in_year_2_flag___constraint_B: flagIfMineActive_4_2
 - flagIfOreExtracted_4_2 >= 0
Opened_mine_4_in_year_2_flag___constraint_C: flagIfMineActive_4_2
 - flagIfOreExtracted_4_3 >= 0
Opened_mine_4_in_year_3_flag___constraint_A: flagIfMineActive_4_3
 - flagIfOreExtracted_4_3 - flagIfOreExtracted_4_4 <= 0
Opened_mine_4_in_year_3_flag___constraint_B: flagIfMineActive_4_3
 - flagIfOreExtracted_4_3 >= 0
Opened_mine_4_in_year_3_flag___constraint_C: flagIfMineActive_4_3
 - flagIfOreExtracted_4_4 >= 0
Opened_mine_4_in_year_4_flag___constraint_A: flagIfMineActive_4_4
 - flagIfOreExtracted_4_4 - flagIfOreExtracted_4_5 <= 0
Opened_mine_4_in_year_4_flag___constraint_B: flagIfMineActive_4_4
 - flagIfOreExtracted_4_4 >= 0
Opened_mine_4_in_year_4_flag___constraint_C: flagIfMineActive_4_4
 - flagIfOreExtracted_4_5 >= 0
Opened_mine_4_in_year_5_flag___constraint_D: flagIfMineActive_4_5
 - flagIfOreExtracted_4_5 = 0
Upper_limitation_on_the_extraction_of_ore_from_a_mine_1_in_year_1:
 minedOre_1_1 <= 2
Upper_limitation_on_the_extraction_of_ore_from_a_mine_1_in_year_2:
 minedOre_1_2 <= 2
Upper_limitation_on_the_extraction_of_ore_from_a_mine_1_in_year_3:
 minedOre_1_3 <= 2
Upper_limitation_on_the_extraction_of_ore_from_a_mine_1_in_year_4:
 minedOre_1_4 <= 2
Upper_limitation_on_the_extraction_of_ore_from_a_mine_1_in_year_5:
 minedOre_1_5 <= 2
Upper_limitation_on_the_extraction_of_ore_from_a_mine_2_in_year_1:
 minedOre_2_1 <= 2.5
Upper_limitation_on_the_extraction_of_ore_from_a_mine_2_in_year_2:
 minedOre_2_2 <= 2.5
Upper_limitation_on_the_extraction_of_ore_from_a_mine_2_in_year_3:
 minedOre_2_3 <= 2.5
Upper_limitation_on_the_extraction_of_ore_from_a_mine_2_in_year_4:
 minedOre_2_4 <= 2.5
Upper_limitation_on_the_extraction_of_ore_from_a_mine_2_in_year_5:
 minedOre_2_5 <= 2.5
Upper_limitation_on_the_extraction_of_ore_from_a_mine_3_in_year_1:
 minedOre_3_1 <= 1.3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_3_in_year_2:
 minedOre_3_2 <= 1.3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_3_in_year_3:
 minedOre_3_3 <= 1.3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_3_in_year_4:
 minedOre_3_4 <= 1.3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_3_in_year_5:
 minedOre_3_5 <= 1.3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_4_in_year_1:
 minedOre_4_1 <= 3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_4_in_year_2:
 minedOre_4_2 <= 3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_4_in_year_3:
 minedOre_4_3 <= 3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_4_in_year_4:
 minedOre_4_4 <= 3
Upper_limitation_on_the_extraction_of_ore_from_a_mine_4_in_year_5:
 minedOre_4_5 <= 3
Binaries
flagIfMineActive_1_1
flagIfMineActive_1_2
flagIfMineActive_1_3
flagIfMineActive_1_4
flagIfMineActive_1_5
flagIfMineActive_2_1
flagIfMineActive_2_2
flagIfMineActive_2_3
flagIfMineActive_2_4
flagIfMineActive_2_5
flagIfMineActive_3_1
flagIfMineActive_3_2
flagIfMineActive_3_3
flagIfMineActive_3_4
flagIfMineActive_3_5
flagIfMineActive_4_1
flagIfMineActive_4_2
flagIfMineActive_4_3
flagIfMineActive_4_4
flagIfMineActive_4_5
flagIfOreExtracted_1_1
flagIfOreExtracted_1_2
flagIfOreExtracted_1_3
flagIfOreExtracted_1_4
flagIfOreExtracted_1_5
flagIfOreExtracted_2_1
flagIfOreExtracted_2_2
flagIfOreExtracted_2_3
flagIfOreExtracted_2_4
flagIfOreExtracted_2_5
flagIfOreExtracted_3_1
flagIfOreExtracted_3_2
flagIfOreExtracted_3_3
flagIfOreExtracted_3_4
flagIfOreExtracted_3_5
flagIfOreExtracted_4_1
flagIfOreExtracted_4_2
flagIfOreExtracted_4_3
flagIfOreExtracted_4_4
flagIfOreExtracted_4_5
End
