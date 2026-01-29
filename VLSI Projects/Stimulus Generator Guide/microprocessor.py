t0 = 25  # nanoseconds
tt = 50  # picoseconds

ada0 = ["0"]*8+["1"]*8
ada1 = ["0"]*8+["1"]*8
ada2 = ["0"]*8+["1"]*8

adb0 = ["0"]*16
adb1 = ["0"]*16
adb2 = ["0"]*16

md0 = ["0"]*8+["1"]*8
md1 = ["0"]*8+["1"]*8
md2 = ["0"]*8+["1"]*8
md3 = ["0"]*8+["1"]*8
md4 = ["0"]*8+["1"]*8
md5 = ["0"]*8+["1"]*8
md6 = ["0"]*8+["1"]*8
md7 = ["0"]*8+["1"]*8

rw = ["0"]*4+["1"]*4+["0"]*4+["1"]*4

rfen = ["0"]*2+["1"]*2+["0"]*2+["1"]*2+["0"]*2+["1"]*2+["0"]*2+["1"]*2

rfs = ["0"]*8

F0 = ["0"]*8
F1 = ["0"]*8
F2 = ["0"]*8
F3 = ["0"]*8
F4 = ["0"]*8
F5 = ["0"]*8
left = ["0"]*8

clk1 = ["1"]*2+["0"]*2+["1"]*2+["0"]*2+["1"]*2+["0"]*2+["1"]*2+["0"]*2
clk2 = ["0"]*2+["1"]*2+["0"]*2+["1"]*2+["0"]*2+["1"]*2+["0"]*2+["1"]*2

inputs = [ada0, ada1, ada2, adb0, adb1, adb2, md0, md1, md2, md3, md4, md5, md6, md7, rw, rfen, rfs, F0, F1, F2, F3, F4, F5, left, clk1, clk2]

inputNames = ["ada0", "ada1", "ada2", "adb0", "adb1", "adb2", "md0", "md1", "md2", "md3", "md4", "md5", "md6", "md7", "rw", "rfen", "rfs", "F0", "F1", "F2", "F3", "F4", "F5", "left", "clk1", "clk2"]

outputNames = ["Y0", "Y1", "Y2", "Y3", "Y4", "Y5", "Y6", "Y7", "cout"]
outputBits = 9

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

