# EDIT BELOW HERE
t0 = 50 #nanoseconds
tt = 50 #picoseconds
#       blank           write stage     write push      read stage      read push       write stage     write push
md   =  ["00000000"]    +["00001111"]   +["00001111"]   +["00000000"]   +["00000000"]   +["00000000"]   +["00000000"]   +["00000000"]
rfs  =  ["1"]           +["1"]          +["1"]          +["1"]          +["1"]          +["1"]          +["1"]          +["1"]
rfen =  ["0"]           +["0"]          +["1"]          +["0"]          +["1"]          +["0"]          +["1"]          +["1"]
rw   =  ["0"]           +["1"]          +["1"]          +["0"]          +["0"]          +["1"]          +["1"]          +["1"]
ada  =  ["000"]         +["000"]        +["000"]        +["000"]        +["000"]        +["000"]        +["000"]        +["000"]
adb  =  ["000"]         +["000"]        +["000"]        +["000"]        +["000"]        +["000"]        +["000"]        +["000"]
F    =  ["0000000"]     +["1000100"]    +["0000000"]    +["1000101"]    +["0000000"]    +["1000110"]    +["0000000"]    +["1000111"]
clk1 =  ["1"]           +["0"]          +["1"]          +["0"]          +["1"]          +["0"]          +["1"]          +["0"]
clk2 =  ["0"]           +["1"]          +["0"]          +["1"]          +["0"]          +["1"]          +["0"]          +["1"]
inputs = [md, rfs, rfen, rw, ada, adb, F, clk1, clk2]
inputNames = ["md", "rfs", "rfen", "rw", "ada", "adb", "F", "clk1", "clk2"]

outputName = "Y"
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
        print("c" + str(i) + " (0 " + outputName + str(outputBits-1-i) + ") capacitor c=3f")
    else:
        print("c" + str(i) + " (0 " + outputName + ") capacitor c=3f")
