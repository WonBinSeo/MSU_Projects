t0 = 25  # nanoseconds
tt = 50  # picoseconds

wwl0 = ["1"]*8+["0"]*8
wwl1 = ["0"]*16
wwl2 = ["0"]*16
wwl3 = ["0"]*16
wwl4 = ["0"]*16
wwl5 = ["0"]*16
wwl6 = ["0"]*16
wwl7 = ["0"]*8+["1"]*8

rw0 = ["1"]*16
rw1 = ["0"]*16
rw2 = ["0"]*16
rw3 = ["0"]*16
rw4 = ["0"]*16
rw5 = ["0"]*16
rw6 = ["0"]*16
rw7 = ["0"]*16
       

rwen = ["0"]*2+["0"]*2+["1"]*2+["1"]*2+["0"]*2+["0"]*2+["1"]*2+["1"]*2

en = ["0"]*2+["1"]*1+["0"]*3+["1"]*1+["0"]*3+["1"]*1+["0"]*3+["1"]*1+["0"]*1

data = ["0"]*4+["1"]*4+["0"]*4+["1"]*4

inputs = [wwl0, wwl1, wwl2, wwl3, wwl4, wwl5, wwl6, wwl7, rw0, rw1, rw2, rw3, rw4, rw5, rw6, rw7, en, rwen, data]

inputNames = ["wwl0", "wwl1", "wwl2", "wwl3", "wwl4", "wwl5", "wwl6", "wwl7", "rw0", "rw1", "rw2", "rw3", "rw4", "rw5", "rw6", "rw7", "en", "rwen", "data"]

outputNames = ["A", "B"]
outputBits = 2

# EDIT ABOVE HERE

header = """simulator lang=spectre
global gnd!
parameters t0="""+str(t0)+"""n tt=0.0"""+str(tt)+"""n
Vdd (vdd! 0) vsource dc=3
Gnd (gnd! 0) vsource dc=0
"""

print(header)
inputCount = 0
for i in range(0,len(inputs)): #Per input variable
    for j in range(0,len(inputs[i][0])): #Per input bit
        if(len(inputs[i][0]) > 1):
            print("v" + str(inputCount+1) + " (" + inputNames[i] + str(len(inputs[i][0])-1-j) + " 0) vsource type=pwl wave = \[")
        else:
            print("v" + str(inputCount+1) + " (" + inputNames[i] + " 0) vsource type=pwl wave = \[")
        level = 3 * int(inputs[i][0][j])
        print("+ (0*t0) " + str(level))
        for k in range(0,len(inputs[i])-1): #per input bit change
            nextLevel = 3 * int(inputs[i][k+1][j])
            if(nextLevel != level):
                print("+ (" + str(k+1) + "*t0) " + str(level))
                print("+ (" + str(k+1) + "*t0+tt) " + str(nextLevel))
                level = nextLevel
        print("+ ]")
        inputCount = inputCount + 1
for i in range(0,outputBits):
    if(outputBits > 1):
        print("c", str(i), " (0 ", outputNames[i], ") capacitor c=3f")
    else:
        print("c", str(i), " (0 ", outputNames[i], ") capacitor c=3f")

