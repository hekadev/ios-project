//
//  ViewController.swift
//  tapper
//
//  Created by Hery Kang on 14/7/16.
//  Copyright © 2016 hekadev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var tapsText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    var maxTaps: Int = 0
    var currentTap: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateCurrentTap() {
        tapsLbl.text = "\(currentTap) Taps"
    }
    
    func isGameOver() -> Bool{
        if currentTap >= maxTaps {
            return true
        }
        return false
    }

    @IBAction func onPlayBtn(sender: UIButton) {
        if tapsText.text != "" && tapsText != nil {
            logo.hidden = true
            tapsText.hidden = true
            playBtn.hidden = true
            
            coinBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(tapsText.text!)!
            currentTap = 0
            updateCurrentTap()
        }
    }

    @IBAction func onTapCoinBtn(sender: UIButton) {
        currentTap = currentTap + 1
        updateCurrentTap()
        
        if isGameOver() {
            
            logo.hidden = false
            tapsText.hidden = false
            playBtn.hidden = false
            
            coinBtn.hidden = true
            tapsLbl.hidden = true
        }
    }
}

