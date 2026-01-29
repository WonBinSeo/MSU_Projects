t0 = 25  # nanoseconds
tt = 50  # picoseconds

Y0 = ["0"]*1+["1"]*1+["0"]*1+["1"]*1+["0"]*1+["1"]*1+["0"]*1+["1"]*1
Y1 = ["1"]*1+["0"]*1+["1"]*1+["0"]*1+["1"]*1+["0"]*1+["1"]*1+["0"]*1
Y2 = ["0"]*1+["0"]*1+["1"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["1"]*1
Y3 = ["1"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["1"]*1+["0"]*1+["0"]*1
Y4 = ["0"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1+["1"]*1
Y5 = ["1"]*1+["0"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
Y6 = ["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1
Y7 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1

md0 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md1 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md2 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md3 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md4 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md5 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md6 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1
md7 = ["0"]*1+["1"]*1+["0"]*1+["0"]*1+["1"]*1+["0"]*1+["0"]*1+["0"]*1

rfs = ["0"]*4+["1"]*4



inputs = [Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, md0, md1, md2, md3, md4, md5, md6, md7, rfs]

inputNames = ["Y0", "Y1", "Y2", "Y3", "Y4", "Y5", "Y6", "Y7", "md0", "md1", "md2", "md3", "md4", "md5", "md6", "md7", "rfs"]

outputNames = ["D0", "D1", "D2", "D3", "D4", "D5", "D6", "D7"]
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

