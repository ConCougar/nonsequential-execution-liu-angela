// Allen ISD Computer Science Assignment
// Non-sequential Project | complexATM
// Angela Liu
// Computer Science I, Period 4
// 2018.01.26


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $5 and $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 5.
  You must print one line indicating that either a $5 or $20 bill was dispensed
  for each bill dispensed.

  For example, if the program is invoked as:  ./complexATM 75
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed
  $5.00 dispensed
  $5.00 dispensed
  $5.00 dispensed

  Include an assert statement for each assumption that you are making.
*/

// Continue with your code here

assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")
let dollarValueRequested = Int(CommandLine.arguments[1])!
//assert(dollarValueRequested % 5 == 0, "Dollar value requested must be evenly divisible by $5.00")
//print("ATM will now dispense $20.00 bills and $5.00 bills to deliver the sum of $\(dollarValueRequested).00")
//var dollarValueDue = dollarValueRequested
//repeat {
//    print("$20.00 dispensed")
//    dollarValueDue -= 20
//}while (dollarValueDue >= 20)
//repeat {
//    print("$5.00 dispensed")
//    dollarValueDue -= 5
//}while (dollarValueDue >= 5)

func atm(dollarValueRequested:Int, denomination:Int) -> Int {
    var dollarValueRemaining = dollarValueRequested
    let billsToDispense = dollarValueRequested / denomination
    for billNumber in (0 ..< billsToDispense) {
        print("\(billNumber+1)/\(billsToDispense): $\(denomination) dispensed")
        dollarValueRemaining -= denomination
    }
    return dollarValueRemaining
}

var dollarValueRemaining = dollarValueRequested
dollarValueRemaining = atm(dollarValueRequested: dollarValueRemaining, denomination: 100)
dollarValueRemaining = atm(dollarValueRequested: dollarValueRemaining, denomination: 20)
dollarValueRemaining = atm(dollarValueRequested: dollarValueRemaining, denomination: 5)

/*
func MoneyOwed(number:Int) -> String {
    number -= 100
    print("$100 dispensed")
    while (number / 100) >= 1
    
 func MoneyOwed(number:Int) -> String {
    print("$20 dispensed")
    MoneyOwed -= 20
    while (number / 20) >=1
 }    
   



*/













