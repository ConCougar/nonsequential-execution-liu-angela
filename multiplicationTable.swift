// Allen ISD Computer Science Assignment
// Non-sequential Project | multiplicationTable
// Angela Liu
// Computer Science I, Period 4
// 2018.01.26


/*
  You're responsible for printing a grid displaying a multiplication table.
  The single argument on the command line will specify the size of the grid.
  For example, if the program is invoked as:, ./multiplicationTable 3 
  Your output should be:
       1   2   3
  1    1   2   3
  2    2   4   6
  3    3   6   9

  You may assume that the maximum grid size is 20.

  Be sure that the numbers in your grid are aligned (i.e. columns are flush right)
  For example:
      3
      6
      9
     12

  Include an assert statement for each assumption that you are making.

*/

// Continue with your code here

assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")
let box = Int(CommandLine.arguments[1])!
assert(box <= 20)
let start = 1
for num1 in start ... box {
    for num2 in start ... box {
        if (num1*num2) < 10 {
            print(terminator: " ")
        }
        if (num1*num2) < 100 {
            print(terminator: " ")
        }
        print ("\(num1*num2)", terminator: " ")
    }
    print()
}































