//
//  TicTac.swift
//  Tic Tac Toe
//
//  Created by zcrome on 7/18/16.
//  Copyright © 2016 zcrome. All rights reserved.
//

import Foundation


public class TicTac {
    
    //0 no one| 1 for X | 2 for O| 3 for draw
    private var resultGame = 0
    //user player 1 and 2
    private var currentTurnUser = 1
    private var firstPlayerSymbol = ""
    private var winnerStates = [
        [1,1,1,9,9,9,9,9,9],
        [9,9,9,1,1,1,9,9,9],
        [9,9,9,9,9,9,1,1,1],
        [1,9,9,1,9,9,1,9,9],
        [9,1,9,9,1,9,9,1,9],
        [9,9,1,9,9,1,9,9,1],
        [1,9,9,9,1,9,9,9,1],
        [9,9,1,9,1,9,1,9,9],
        [2,2,2,9,9,9,9,9,9],
        [9,9,9,2,2,2,9,9,9],
        [9,9,9,9,9,9,2,2,2],
        [2,9,9,2,9,9,2,9,9],
        [9,2,9,9,2,9,9,2,9],
        [9,9,2,9,9,2,9,9,2],
        [2,9,9,9,2,9,9,9,2],
        [9,9,2,9,2,9,2,9,9]
    ]
    
    private func checkIfThereIsDrawGame(board arrBoardParam: [Int]) -> Bool{
        
        var isDraw = true
        
        for x in arrBoardParam {
            if x == 0{
                isDraw = false
            }
        }
        
        return isDraw
        
    }
    
    init(Symbol symbolParam:String){
        firstPlayerSymbol = symbolParam.uppercaseString
    }
    
    public func setFirstPlayerSymbol(Symbol symbolParam:String){
        firstPlayerSymbol = symbolParam
    }
    
    public func getFirstPlayerSymbol() -> String{
        return firstPlayerSymbol
    }
    
    
    public func  getCurrentUserTurn () -> Int{
        return currentTurnUser
    }
    
    public func  changeUserTurn () {
        if currentTurnUser == 1 {
           currentTurnUser = 2
        }else{
           currentTurnUser = 1
        }
    }
    
    public func changeFirstPlayerSymbol(){
        if firstPlayerSymbol.uppercaseString == "X"{
            firstPlayerSymbol = "O"
        }else{
            firstPlayerSymbol = "X"
        }
    }
    
    
    public func checkIfThereIsAWinner(board arrBoardParam: [Int]) -> Int{
        
        if checkIfThereIsDrawGame(board: arrBoardParam){
            resultGame = 3
            return resultGame
        }
        
        var similarCounter = 0
        for winArr in winnerStates {
            similarCounter = 0
            for(var i=0; i<winArr.count; i+=1){
                
                if winArr[i] == arrBoardParam[i]{
                    
                    similarCounter+=1
                    print(winArr[i] == arrBoardParam[i])
                    print(winArr[i])
                    print(arrBoardParam[i])
                }
            }
            print("other array")
            if similarCounter == 3{
                if winArr.contains(1){
                    resultGame = 1
                }else{
                    resultGame = 2
                }
                
                return resultGame
            }
        }
        
        
        
        return resultGame
    }
    
    
    
    public func checkCurrentMovement(clickPosParam:Int,board arrBoardParam: [Int] ) -> Bool{
        
        if arrBoardParam[clickPosParam] == 1 || arrBoardParam[clickPosParam] == 2{
            return false
        }
        
        return true
    }
    
    
    
    
    
}
