import Foundation

let shouldMascotChangeVotes: [Bool] = [false, false, false, true, false, true, true, true, false, true, true, true, true, false, true, true, false, true, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, false, true, true, false, false, true, true, true, false, true, false, true, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, true, true, false, true, true, false, false, true, false, true, true, false, false, false, true, false, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, false, false, false, true, true, true, false, true, true, false, false, true, false, false, true, true, true, true, false, true, true, true, true, false, true, true, false, true, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, true, true, false, true, true, false, true, true, true, false, false, false, true, false, true, false, true, true, true, true, false, true, false, false, true, true, true, true, true, false]

let shouldInstallCoffeeVendingMachineVotes: [Bool] = [true, true, false, false, false, true, true, false, true, true, true, true, false, true, false, false, true, false, true, false, true, true, false, false, false, false, false, true, true, true, false, false, true, true, false, true, true, true, true, false, true, false, true, true, false, false, false, false, false, false, true, false, true, true, false, true, true, true, true, false, false, true, true, false, false, false, false, true, true, false, false, true, true, true, true, false, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, true, false, true, false, true, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, true, true, true, false, false, false, true, true, true, true, false, false, false, true, true, false, true, true, true, false, false, true, false, true, false, true, false, false, true, false, true, true, true, true, true, true, true, false, true, false, true, true, false, false, true, false, false, true, false, false, false, true, false, true, true, true, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true]

let shouldHaveMorePollOptionsVotes: [Bool] = [false, false, true, true, false, true, false, false, false, false, false, false, true, false, true, true, false, true, true, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, true, true, true, true, false, true, false, false, true, true, false, false, false, false, false, false, true, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, true, false, false, true, false, true, false, false, false, true, false, true, true, true, true, true, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, true, true, true, false, true, false, false, false, false, false, false, false, false, true, true, true, true, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, false, true, true, false, false]

//overall count
var yesCount = [Bool]()
var noCount = [Bool]()

//mascot count
var yesOnMascot = [Bool]()
var noOnMascot = [Bool]()

//coffee machines count
var yesOnCoffeeMachines = [Bool]()
var noOnCoffeeMachines = [Bool]()

//more polls count
var yesOnMorePollOptions = [Bool]()
var noOnMorePollOptions = [Bool]()

for vote in shouldMascotChangeVotes {
    if vote == true {
        yesCount += [vote]
        yesOnMascot += [vote]
    } else {
        noCount += [vote]
        noOnMascot += [vote]
    }
}

for vote in shouldInstallCoffeeVendingMachineVotes {
    if vote == true {
        yesCount += [vote]
        yesOnCoffeeMachines += [vote]
    } else {
        noCount += [vote]
        noOnCoffeeMachines += [vote]
    }
}

for vote in shouldHaveMorePollOptionsVotes {
    if vote == true {
        yesCount += [vote]
        yesOnMorePollOptions += [vote]
    } else {
        noCount += [vote]
        noOnMorePollOptions += [vote]
    }
}

if yesCount.count > noCount.count{
    print("Yes' win")
} else {
    print("No's win")
}

if yesOnMascot.count > noOnMascot.count {
    print("Mascot will change")
} else {
    print("Mascot will not change")
}

if yesOnCoffeeMachines.count > noOnCoffeeMachines.count {
    print("Coffee Machines will change")
} else {
    print("Coffee Machines will not change")
}

if yesOnMorePollOptions.count > noOnMorePollOptions.count {
    print("More poll options!")
} else {
    print("Less poll options!")
}


yesOnMascot.removeAll()
noOnMascot.removeAll()
yesOnCoffeeMachines.removeAll()
noOnCoffeeMachines.removeAll()
yesOnMorePollOptions.removeAll()
noOnMorePollOptions.removeAll()

// Add your vote-processing function here:
func votingResults(forIssue issue: String, votingSource: [Bool]){
    let lowercasedIssue = issue.lowercased()
    
    if lowercasedIssue.hasSuffix("mascot?") {
        for vote in shouldMascotChangeVotes {
            if vote == true {
                yesOnMascot += [vote]
            } else {
                noOnMascot += [vote]
            }
        }
        print("\(issue) \(yesOnMascot.count): yes, \(noOnMascot.count): no")
    }
    
    if lowercasedIssue.hasSuffix("machines?") {
        for vote in shouldInstallCoffeeVendingMachineVotes {
            if vote == true {
                yesOnCoffeeMachines += [vote]
            } else {
                noOnCoffeeMachines += [vote]
            }
        }
        print("\(issue) \(yesOnCoffeeMachines.count): yes, \(noOnCoffeeMachines.count): no")
    }
    
    if lowercasedIssue.hasSuffix("options?") {
        for vote in shouldHaveMorePollOptionsVotes {
            if vote == true {
                yesOnMorePollOptions += [vote]
            } else {
                noOnMorePollOptions += [vote]
            }
        }
        print("\(issue) \(yesOnMorePollOptions.count): yes, \(noOnMorePollOptions.count): no")
    }
}

votingResults(forIssue: "Should we change the mascot?", votingSource: shouldMascotChangeVotes)
votingResults(forIssue: "Should we install coffee vending machines?", votingSource: shouldInstallCoffeeVendingMachineVotes)
votingResults(forIssue: "Should we implement more poll options?", votingSource: shouldHaveMorePollOptionsVotes)