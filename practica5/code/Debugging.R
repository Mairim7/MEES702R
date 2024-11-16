#### TOOLS
traceback()

mean(x)
traceback()

debug()

browser()

# browser() and debug()
source('code/MyFunctions.R')

# Practice ----
## Using traceback ----
funPower(2, 3)
traceback()

## Using line-by-line execution ----
x = 2; y = 3
funPower2 <- function(x, y){
	z <- x^2
}
z = x^y
z
ra <- funRatio(x, u)

## Using debug ----
# Mark a function that will be debugged
debug(funPower)
funPower(2, 3)

# after finishing debugging
undebug(funPower)

# Can apply to other functions
debug(lm)
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
undebug(lm)


## Using browser ----
# Place browser() in your code and 
# source the function again.
source('code/MyFunctions.R')
funPower(2, 3)
# after fixed errors, remove browser() and source the 
# function again.
source('code/MyFunctions.R')
funPower(2, 3)


funPower(2, y = 2)
funPower(2, 3)