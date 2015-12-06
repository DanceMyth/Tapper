//
//  ViewController.swift
//  Tapper
//
//  Created by Dan Smith on 05/12/2015.
//  Copyright © 2015 Dan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0

    @IBOutlet weak var logoimg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    
    @IBAction func coinTapped(sender: UIButton!){
        currentTaps += 1
        updateTapsLbl()
        if isGameOver(){
          restartGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){

        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            logoimg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapsBtn.hidden = false
            tapsLbl.hidden = false
            
            
            maxTaps = Int(howManyTapsTxt.text!)!
           currentTaps = 0
           updateTapsLbl()
            
            
        }
        
        
        
    }
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true}
        else{
            return false}
    }
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoimg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        tapsLbl.hidden = true
        tapsBtn.hidden = true
    
    }

    func updateTapsLbl(){
         tapsLbl.text = "\(currentTaps) Taps"
  
    }
    //This hides the keyboard
    @IBAction func finishedTyping(sender: AnyObject) {
         howManyTapsTxt.resignFirstResponder()
    }
    }

  

    



