import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
func getAngle(with prompt : String) -> Int {
    
    var angle : Int = Int.max
    
    // Loop until valid input is received
    while angle == Int.max {
        
        // Show the prompt
        print(prompt, terminator: "")
        
        // Get the user's input
        var input : String?
        input = readLine()
        
        // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
        if let notNilInput = input {
            
            // Try to get an integer from the provided String
            if let integerInput = Int(notNilInput) {
                
                // Check that value is in the provided range
                if integerInput >= 1 && integerInput <= 178 {
                    angle = integerInput
                }
                
            }
            
            
        }
        
    }
    
    return angle
}

// Get the three values
var angle1 = getAngle(with: "Angle 1? ")
var angle2 = getAngle(with: "Angle 2? ")
var angle3 = getAngle(with: "Angle 3? ")

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Initialize the result variable
var result = ""

// Do we have a valid triangle?
if angle1 + angle2 + angle3 == 180 {
    
    // Yes, now classify
    if angle1 == angle2 && angle2 == angle3 {
        
        result = "Equilateral"
        
    } else {
        
        if angle1 == angle2 || angle2 == angle3 || angle1 == angle3 {
            
            result = "Isosceles"
            
        } else {
            
            // Only other option is...
            result = "Scalene"
        }
        
    }
    
} else {
    
    // No
    result = "Error"
}


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
print(result)

