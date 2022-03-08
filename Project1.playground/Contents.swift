import UIKit
import SwiftUI
import PlaygroundSupport

/*
 PSEUDO-CODE:
 The functions 'waitTime' takes in 6 parameters. It takes in the hours and minutes of the first time as well as whether
 or not it is AM or PM. It does the same thing for the other three parameters.
 It then creates temportary variables to store these parameters in.
 I use an if-statement to check whether the time is PM. If it is, I add 12 to it making it a 24-hour clock
 I use another if-statement to check if minute is greater than the other minute. If it is, I do some math to make the calculations
 easier.
 I then subtract the two times and return a String with the correct time difference
 */
func waitTime(hour: Int, minute: Int, time: String, hour2: Int, minute2: Int, time2: String) -> String{
    
    //temporary variables
    var tempTime: Int = hour2
    var tempMinute: Int = minute2
    
    var tempTime1: Int = hour
    
    //if-statements to compare time of day
    if (time2 == "pm"){
        
        tempTime += 12
    }
    if (time == "pm"){
        
        tempTime1 += 12
    }
    
    //if-statement to check if minutes are larger than the other
    if (minute > minute2){
        
        tempTime -= 1
        tempMinute += 60
    }
    
    //creating new variables that solve the difference
    let newMinute: Int = tempMinute - minute
    let newHour: Int = tempTime - tempTime1
    
    return("You should wait \(newHour):\(newMinute)")
    
}
print(waitTime(hour: 11, minute: 30, time: "am", hour2: 2, minute2: 15, time2: "pm"))

/*
 PSEUDO-CODE:
 The 'verifyParenthesis' function takes a String as a parameter.
 I use a for loop that loops through each character of the String
 I then add each instance of "(" and each instance of ")" to a temporary counter
 If both counters equal each others, then the function will return true, otherwise it will
 return false
 */
func verifyParenthesis (expression: String) -> Bool {
    
    //temporary variables to count the number of times the "(" and ")" show up
    var tempNum: Int = 0
    var tempNum2: Int = 0
    
    //for loop to iterate through each character in the String
    for char in expression{
        
        if (char == "("){
            
            //adds to counter
            tempNum += 1
        }
        if (char == ")"){
            
            //adds to counter
            tempNum2 += 1
        }
    }
    
    //compares both counters, returns true if equal
    if (tempNum == tempNum2){
        
        return true
    } else {
        
        return false
    }
}
print(verifyParenthesis(expression: "())"))
print(verifyParenthesis(expression: "((()))"))

/*
 PSEUDO-CODE:
 The 'isPrime' function takes an Integer as a parameter
 If the number equals 2 or 3, then it is already prime
 Otherwise, I use a while loop and the remainder operator to see if each number is a prime
 */
func isPrime(number: Int) -> Bool {
    
    //if number is 2 or 3, then interger is already Prime
    if (number == 2 || number == 3){
        
        return true
    }
    
    //while loop to check if number is Prime
    var n = 2
    while n*n <= number {
        if number % n == 0 {
            return false
        }
        n = n + 1
    }
        return true
}
print(isPrime(number: 6))
