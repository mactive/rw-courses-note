import UIKit

/*:
 #### Intermediate Swift Video Tutorial Series - raywenderlich.com
 #### Video 6: Initializers
 
 **Note:** If you're seeing this text as comments rather than nicely-rendered text, select Editor\Show Rendered Markup in the Xcode menu.
 
 */

//: Create a class called Account that has a balance property. Have the balance set to 0. Create a function to withdrawl money from the balance. Make sure the withdrawl amount is greater than 0 and the amount is less than the balance.
class Account {
    var balance: Int = 0
    init(bal: Int){
        balance = bal
    }
    
    func withdrawl(cost: Int) {
        if (balance > cost && cost > 0) {
            balance -= cost
            print("you have \(balance) after withdrawl \(cost)")
        } else {
            print("make sure you have enough money")
        }
    }
}
//: Create a subclass called SavingsAccount and override withdrawl(). In this method, make sure that the withdrawn amount is greater than 10.
class SavingAccount: Account {
    override func withdrawl(cost: Int) {
        if (balance - cost > 10) {
            super.withdrawl(cost: cost)
        } else {
            print("make sure you balance greater 10")
        }
    }
}

var pubAccount = Account(bal: 40)
pubAccount.withdrawl(cost: 20)
pubAccount.withdrawl(cost: 18)
pubAccount.withdrawl(cost: 1)


var privateAccount = SavingAccount(bal: 20)
privateAccount.withdrawl(cost: 10)

