import os
import sys

sys.ps1 = "\033[1;31m>> \033[0m"
sys.ps2 = "\033[1;33m.. \033[0m"

def clear ():
	os.system("clear")
