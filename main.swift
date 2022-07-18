//
//  main.swift
//  tryout
//
//  Created by Tuna Dağdanaş on 10.07.2022.
//

import Foundation

print("WELCOME TO BLACKJACK PLAYER1 AND PLAYER2!", "\n")
var sum1 = 0
var sum2 = 0
var player1Card = 0
var player2Card = 0
player1Card = Int.random(in: 1...11)
if player1Card == 1 || player1Card == 11{
    print("Player1 drew AS, do you choose 1 or 11? ", "\n")
    var AS1 = readLine()
    print("Player1 choose", (AS1!), "\n")
    if AS1 == "1"{
        player1Card = 1
        sum1 += player1Card
    }
    else{
        player1Card = 11
        sum1 += player1Card
    }
}
else{
    sum1 += player1Card
    print("Player1 drew ", player1Card, "\n")
}


player2Card = Int.random(in: 1...11)
if player2Card == 1 || player2Card == 11{
    print("Player2 drew AS, do you choose 1 or 11? ", "\n")
    var AS2 = readLine()
    print("Player2 choose", (AS2!), "\n")
    if AS2 == "1"{
        player2Card = 1
        sum2 += player2Card
    }
    else{
        player2Card = 11
        sum2 += player2Card
    }
}
else{
    sum2 += player2Card
    print("Player2 drew ", player2Card, "\n")
}

print("We start with Player1: ", "\n")
while sum1 <= 21 {
    print("Stand or Hit?", "\n")
    var decision = readLine()
    print("Player1 decided to \(decision!)")
    if decision == "Stand"{
        break
    }
    else{
        player1Card = Int.random(in: 1...11)
        //sum1 += player1Card
        if player1Card == 1 || player1Card == 11{
            if sum1 <= 10{
                print("You drew AS, do you choose 1 or 11? ", "\n")
                var AS = readLine()
                print("Player1 choose", (AS!), "\n")
                if AS == "1"{
                    player1Card = 1
                    sum1 += player1Card
                    if sum1 == 21{
                        print("Wow! Player1 is at 21", "\n")
                        break
                    }
                    else{
                        print("Player1 drew ", player1Card, ", in total he is at: ", sum1)
                    }
                }
                else{
                    player1Card = 11
                    sum1 += player1Card
                    if sum1 == 21{
                        print("Wow! Player1 is at 21", "\n")
                        break
                    }
                    else{
                        print("Player1 drew ", player1Card, ", in total he is at: ", sum1)
                    }
                }
            }
            else{
                print("You drew AS but it's automatically is 1", "\n")
                player1Card = 1
                sum1 += player1Card
                if sum1 == 21{
                    print("Wow! Player1 is at 21", "\n")
                    break
                }
                else{
                    print("Player1 drew ", player1Card, ", in total he is at: ", sum1)
                }
            }
        }
        else{
            sum1 += player1Card
            if sum1 == 21{
                print("Wow! Player1 is at 21", "\n")
                break
            }
            else{
                print("Player1 drew ", player1Card, ", in total he is at: ", sum1)
            }
        }
    }
}

if sum1 <= 21{
    print("Player1 is currently" , sum1, ", now it's your turn Player2!")
}

else{
    print("Player1 lost! Now it's your turn Player2")
}
print("Reminder: Player2 was at", player2Card, "\n")
while sum2 <= 21 && sum2 < sum1 {
    if sum2 > sum1 && sum2 <= 21{
        break
    }
    print("Stand or Hit?", "\n")
    var decision = readLine()
    print("Player2 decided to \(decision!)")
    if decision == "Stand"{
        break
    }
    else{
        player2Card = Int.random(in: 1...11)
        if player2Card == 1 || player2Card == 11{
            if sum2 <= 10{
                print("You drew AS, do you choose 1 or 11? ", "\n")
                var AS = readLine()
                print("Player2 choose", (AS!), "\n")
                if AS == "1"{
                    player2Card = 1
                    sum2 += player2Card
                    if sum2 == 21{
                        print("Wow! Player2 is at 21", "\n")
                        break
                    }
                    else{
                        print("Player2 drew ", player2Card, ", in total he is at: ", sum2)
                    }
                }
                else{
                    player2Card = 11
                    sum2 += player2Card
                    if sum2 == 21{
                        print("Wow! Player2 is at 21", "\n")
                        break
                    }
                    else{
                        print("Player2 drew ", player2Card, ", in total he is at: ", sum2)
                    }
                }
            }
            else{
                print("You drew AS but it's automatically is 1", "\n")
                player2Card = 1
                sum2 += player2Card
                if sum2 == 21{
                    print("Wow! Player2 is at 21", "\n")
                    break
                }
                else{
                    print("Player2 drew ", player2Card, ", in total he is at: ", sum2)
                }
            }
        }
        else{
            sum2 += player2Card
            if sum2 == 21{
                print("Wow! Player2 is at 21", "\n")
                break
            }
            else{
                print("Player2 drew ", player2Card, ", in total he is at: ", sum2)
            }
        }
    }
}
if sum1 != 21 || sum2 != 21{
    if sum1 < 21 && sum2 < 21 {
        if sum1 > sum2{
            print("Player1 wins the game!")
        }
        else if sum1 == sum2{
            print("Tie!")
        }
        else{
            print("Player2 wins the game!")
        }
    }
    else if sum1 <= 21{
        print("Player1 wins the game!")
    }

    else{
        print("Player2 wins the game!")
    }
}

