# EDIT BELOW HERE
t0 = 50 #nanoseconds
tt = 50 #picoseconds

clk = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
D0 = ["0"]*1+["1"]*1+["1"]*1+["0"]*1
D1 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
D2 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
D3 = ["0"]*1+["0"]*1+["1"]*1+["0"]*1
D4 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
D5 = ["0"]*1+["0"]*1+["1"]*1+["0"]*1
D6 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
D7 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1




#S = ["1"]
inputs = [clk, D0, D1, D2, D3, D4, D5, D6, D7]
inputNames = ["clk", "D0", "D1", "D2", "D3", "D4", "D5", "D6", "D7"]

outputNames = ["Q0", "Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7"]
outputBits = 8

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
