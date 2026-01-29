# EDIT BELOW HERE
t0 = 25 #nanoseconds
tt = 50 #picoseconds

s0 = ["1"]*8
s1 = ["1"]*8
s2 = ["1"]*8
s3 = ["1"]*8
s4 = ["1"]*8
s5 = ["1"]*8
s6 = ["1"]*8
s7 = ["1"]*8

k0 = ["0"]*1+["1"]*1+["0"]*1+["1"]*1+["0"]*1+["1"]*1+["0"]*1+["1"]*1
k1 = ["0"]*1+["0"]*1+["1"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["1"]*1
k2 = ["0"]*8

left = ["1"]*4+["0"]*4


#S = ["1"]
inputs = [s0, s1, s2, s3, s4, s5, s6, s7, k0, k1, k2, left]
inputNames = ["s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7", "k0", "k1", "k2", "left"]

outputNames = ["Y0", "Y1", "Y2", "Y3", "Y4", "Y5", "Y6", "Y7"]
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
