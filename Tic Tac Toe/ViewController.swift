//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by zcrome on 7/18/16.
//  Copyright © 2016 zcrome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // pos 0 vacio | pos 1 X | pos 2 O
    var arrBoard = [0,0,0,0,0,0,0,0,0]
    var gameTicTac = TicTac(Symbol: "x")
    var winner = 0
    
    @IBOutlet weak var gameButton0: UIButton!
    @IBOutlet weak var gameButton1: UIButton!
    @IBOutlet weak var gameButton2: UIButton!
    @IBOutlet weak var gameButton3: UIButton!
    @IBOutlet weak var gameButton4: UIButton!
    @IBOutlet weak var gameButton5: UIButton!
    @IBOutlet weak var gameButton6: UIButton!
    @IBOutlet weak var gameButton7: UIButton!
    @IBOutlet weak var gameButton8: UIButton!
    
    
    
    @IBAction func playerTurnButton(sender: AnyObject) {
        
        if gameTicTac.checkCurrentMovement(sender.tag, board: arrBoard){
            arrBoard[sender.tag] = gameTicTac.getCurrentUserTurn()
            if gameTicTac.getCurrentUserTurn() == 1{
                if gameTicTac.getFirstPlayerSymbol() == "X"{
                    sender.setImage(UIImage(named:"cross.png"), forState: .Normal)
                }else{
                    sender.setImage(UIImage(named:"nought.png"), forState: .Normal)
                }
            }else{
                
                if gameTicTac.getFirstPlayerSymbol() == "X"{
                    sender.setImage(UIImage(named:"nought.png"), forState: .Normal)
                }else{
                    sender.setImage(UIImage(named:"cross.png"), forState: .Normal)
                }
                
            }
            
            winner = gameTicTac.checkIfThereIsAWinner(board: arrBoard)
            
            print(winner)
            print(arrBoard)
            
            if winner == 1{
                if gameTicTac.getFirstPlayerSymbol() == "X"{
                    print("X won!!")
                    showWinnerMessage("X won!")
                }else{
                    print("O won!!")
                    showWinnerMessage("O won!")
                }
            }else if winner == 2{
                if gameTicTac.getFirstPlayerSymbol() == "X"{
                    print("O won!!")
                    showWinnerMessage("O won!")
                }else{
                    print("X won!!")
                    showWinnerMessage("X won!")
                }
            }else if winner == 3{
                print("X won!!")
                showWinnerMessage("Draw!")
                
            }else{
                gameTicTac.changeUserTurn()
            }
            
        }
        
    }
    
    
    func showWinnerMessage(resultString:String){
        let alertController = UIAlertController(title: "", message:
            resultString, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Again!", style: UIAlertActionStyle.Default,handler: nil))
        self.presentViewController(alertController, animated: true, completion: resetGameProperties)
    }
    
    func resetGameProperties(){
        arrBoard = [0,0,0,0,0,0,0,0,0]
        gameTicTac = TicTac(Symbol: "x")
        winner = 0
        gameButton0.setImage(UIImage(named: ""), forState: .Normal)
        gameButton1.setImage(UIImage(named: ""), forState: .Normal)
        gameButton2.setImage(UIImage(named: ""), forState: .Normal)
        gameButton3.setImage(UIImage(named: ""), forState: .Normal)
        gameButton4.setImage(UIImage(named: ""), forState: .Normal)
        gameButton5.setImage(UIImage(named: ""), forState: .Normal)
        gameButton6.setImage(UIImage(named: ""), forState: .Normal)
        gameButton7.setImage(UIImage(named: ""), forState: .Normal)
        gameButton8.setImage(UIImage(named: ""), forState: .Normal)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

