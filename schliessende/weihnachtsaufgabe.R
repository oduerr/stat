#======================================================
# Reading the decoded text (Ignore the warning message)
text_coded = readLines('http://www-home.htwg-konstanz.de/~oduerr/R/code_cracking/text_coded.txt', encoding = "UTF-8")
text_coded

## Working with Transition Matrix
trans.prob.mat = read.table('http://www-home.htwg-konstanz.de/~oduerr/R/code_cracking/trans.prob.mat.csv')
# P(A|B) von B (rows) A (spalten)
# 
colSums(trans.prob.mat)
rowSums(trans.prob.mat)

## Loading helper functions
source('http://www-home.htwg-konstanz.de/~oduerr/R/code_cracking/functions.R')

# The function log-prob Text --> log. probability based on transitions
log.prob('HALLO WIE GEHTS')
log.prob('ASDGD ASY WGASD')

log.prob( text_coded )


mapping0 = sample(LETTERS) 

# decode mapping and text 
decode(mapping0, 'HALLO WIE GEHTS')

mapping0 = LETTERS
decode(mapping0, 'HALLO WIE GEHTS')

####### Hints
# Start with initial mapping
# Change two letters (permutation)
# Calculate likelihood of new text
# Accept change if likelihood is higher
# Also sometime accept changes if likelihood gets wrose 

p = log.prob(text_coded)
prop.mapping = mapping0 #Propose a new mapping

#Change two letter
proposal = sample(1:26, 2) 
prop.mapping[ proposal[1] ] = mapping0[ proposal[2] ]
prop.mapping[ proposal[2] ] = mapping0[ proposal[1] ]

prop.decode = decode(prop.mapping, text_coded)
prop.loglike = log.prob(prop.decode) 

######
# Hinweis
# Nehmen Sie die neue Permutation an, falls die W'keit grösser ist. Allerdings empfiehlt es sich auch ab und zu mal Verschlechterungen anzunehmen. Verwenden Sie folgenden Code:
if (runif(1) < exp(prop.loglike - loglike_current)) {
  # Annahme der Permutation
}


