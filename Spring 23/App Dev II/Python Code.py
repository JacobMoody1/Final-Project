#First I have it establishing a number given by the user that is stored in the variable x
x = int(input("Please enter a number: "))
#Now it is checking x to see if it is divisible by 2 if it is divisible by 2 then it returns it as even and if not it returns that it is odd
if x % 2 == 0:
    print("Your number is even")
else:
    print("Your number is odd")
#Here I have a for loop that is looping through a range of 100 numbers starting at 0 and going to 99 and each number it prints it out on its own line
for i in range(100):
    print(i)
#Just a blank class to show that pass does nothing and just holds the place to complete something that is needed but has not been defined yet
class MyEmptyClass:
    pass
#This is the function i created to match the number to what would be good binary numbers and what would be bad binary numbers
def binary(num):
    match num:
        case 0:
            return "Good Binary Number"
        case 1:
            return "Good Binary Number"
        case 2:
            return "Bad Binary Number"
#This is print functions to show that it returns the values shown in the function
print(binary(1))
print(binary(2))
#This is a function I created to compare two numbers and return which one is bigger
def compare(num1, num2):
    if num1 > num2:
        return num1
    else:
        return num2
#This is the print of the compare function with both test cases showing when number 1 is bigger and when number 2 is bigger
print(compare(20, 12))
print(compare(15, 38))
#This is the example of the lambda function taking in two variables and multiplying them
x = lambda a, b: a * b
#This is the test to make sure the lambda is working properly
print(x(2, 10))