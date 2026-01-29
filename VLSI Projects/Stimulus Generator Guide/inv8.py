t0 = 25  # nanoseconds
tt = 50  # picoseconds

A0 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A1 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A2 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A3 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A4 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A5 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A6 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1
A7 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1


inputs = [A0, A1, A2, A3, A4, A5, A6, A7]

inputNames = ["A0", "A1", "A2", "A3", "A4", "A5", "A6", "A7"]

outputNames = ["s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7"]
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
        print("c",str(i)," (0 ",outputNames[i],") capacitor c=3f")
    else:
        print("c", str(i), " (0 ", outputNames[i], ") capacitor c=3f")

