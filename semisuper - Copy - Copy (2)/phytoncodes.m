with open('enbxpart_1.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_1.csv',indices,delimiter=",")
file.close()
len(array2d)



with open('enbxpart_2.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_2.csv',indices,delimiter=",")
file.close()
len(array2d)

with open('enbxpart_3.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_3.csv',indices,delimiter=",")
file.close()
len(array2d)


with open('enbxpart_4.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_4.csv',indices,delimiter=",")
file.close()
len(array2d)


with open('enbxpart_5.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_5.csv',indices,delimiter=",")
file.close()
len(array2d)


with open('enbxpart_6.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_6.csv',indices,delimiter=",")
file.close()
len(array2d)

with open('enbxpart_7.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_7.csv',indices,delimiter=",")
file.close()
len(array2d)



with open('enbxpart_8.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_8.csv',indices,delimiter=",")
file.close()
len(array2d)


with open('enbxpart_9.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_9.csv',indices,delimiter=",")
file.close()
len(array2d)


with open('enbxpart_10.txt') as file:
    array2d = [[float(digit) for digit in line.split()] for line in file]
#print(array2d)
hasher = RandomTreesEmbedding(n_estimators=100, random_state=0, max_depth=10000, min_samples_leaf=5)
rt=hasher.fit(array2d)
indices = hasher.apply(array2d) 
np.savetxt('enbxpart_10.csv',indices,delimiter=",")
file.close()
len(array2d)


