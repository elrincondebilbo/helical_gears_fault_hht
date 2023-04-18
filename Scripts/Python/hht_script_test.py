'''
----------------------------------------------------------------
Author: Mario Paul Tafur Díaz
Institution: Santo Toribio de Mogrovejo Catholic University - Peru
Contact: mariop.tafur@gmail.com / 71491743@usat.pe
----------------------------------------------------------------


----------------------------------------------------------------
This file is part of my undergraduate thesis project. The aim
is to use the Hilbert-Huang Transform to detect early faults in
helical gears.

This specific file is for testing preliminary data given to me
by my supervisor. All the code was worked on bit by bit in 
'hht_test.ipynb'.

The results of this code will be compared against the ones 
obtained with MATLAB.
----------------------------------------------------------------
'''

import pandas as pd
import matplotlib.pyplot as plt

excel_file_path = 'Test.xlsx'
var = pd.read_excel(excel_file_path)
print(var)