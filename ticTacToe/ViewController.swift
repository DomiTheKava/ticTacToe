//
//  ViewController.swift
//  ticTacToe
//
//  Created by Dominik Penkava on 9/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var turnController: UILabel! // not really a controller, more of a teller
    @IBOutlet weak var resetBtn: UIButton!
    
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var one: UIButton!
    
    var turnCounter: Int = 0
    
    var gameEnded: Bool = false
    
    var gameBoard = [["", "", ""],
                     ["", "", ""],
                     ["", "", ""]]
    // It works, even though it might not be pretty. And I made a completly flawed system using a Label to tell the game whos turn it is
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResetBoard()
        
        resetBtn.layer.cornerRadius = 10
        
    }

    func CheckWinCondition(player: String) {
        
        // check rows
        for row in 0...2 {
            if gameBoard[row][0] == player && gameBoard[row][1] == player && gameBoard[row][2] == player {
                gameEnded = true
                turnController.text = "\(turnController.text ?? "N/A") Wins!"
                print("player wins")
            }
        }
        
        // check columns
        for col in 0...2 {
            if gameBoard[0][col] == player && gameBoard[1][col] == player && gameBoard[2][col] == player {
                gameEnded = true
                turnController.text = "\(turnController.text ?? "N/A") Wins!"
                print("player wins")
            }
        }
        
        // check diagnal stuff
        if gameBoard[0][0] == player && gameBoard[1][1] == player && gameBoard[2][2] == player {
            gameEnded = true
            turnController.text = "\(turnController.text ?? "N/A") Wins!"
            print("player wins")
        }
        
        if gameBoard[2][0] == player && gameBoard[1][1] == player && gameBoard[0][2] == player {
            gameEnded = true
            turnController.text = "\(turnController.text ?? "N/A") Wins!"
            print("player wins")
        }
        
    }
    
    func ResetBoard() {
        gameBoard = [["", "", ""],
                    ["", "", ""],
                    ["", "", ""]]
        
        let emptyTitle = NSAttributedString(string: "", attributes: [:])
        
        one.setAttributedTitle(emptyTitle, for: .normal)
        two.setAttributedTitle(emptyTitle, for: .normal)
        three.setAttributedTitle(emptyTitle, for: .normal)
        four.setAttributedTitle(emptyTitle, for: .normal)
        five.setAttributedTitle(emptyTitle, for: .normal)
        six.setAttributedTitle(emptyTitle, for: .normal)
        seven.setAttributedTitle(emptyTitle, for: .normal)
        eight.setAttributedTitle(emptyTitle, for: .normal)
        nine.setAttributedTitle(emptyTitle, for: .normal)
        
        let random = Int.random(in: 0...1)
        
        if random == 1 {
            turnController.text = "X"
        } else {
            turnController.text = "O"
        }
        
    }
    
    func swapPlayer() {
        if gameEnded == false {
            turnCounter += 1
            switch turnController.text {
            case "O": turnController.text = "X"
            case "X": turnController.text = "O"
            default: turnController.text = "X"
            }
        }
        
        if turnCounter == 9 {
            if !gameEnded {
                turnController.text = "It's a Draw!"
            }
        }
    }
    
    // yes, I could set a tag or something for each button and then use one function (or method), but I realized this after I already made and linked all these IBAtions to them (and I dont like the linking process so ill just leave it like this because it works and im not getting paid)
    
    @IBAction func oneTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[0][0] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    
    @IBAction func twoTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[0][1] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func threeTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[0][2] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    @IBAction func fourTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[1][0] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func fiveTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[1][1] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func sixTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[1][2] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func sevenTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[2][0] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func eightTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[2][1] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func nineTap(_ sender: UIButton) {
        if gameEnded == false {
            if sender.attributedTitle(for: .normal)?.string == "" {
                                sender.setAttributedTitle(NSAttributedString(string: turnController.text!, attributes: [.font: UIFont.systemFont(ofSize: 50, weight: .bold)]), for: .normal)
                gameBoard[2][2] = turnController.text!
                CheckWinCondition(player: turnController.text!)
                swapPlayer()
            }
        }
    }
    
    @IBAction func resetBoardBtn(_ sender: UIButton) {
        turnCounter = 0
        gameEnded = false
        ResetBoard()
    }
}

