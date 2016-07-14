//
//  ViewController.swift
//  multiplies
//
//  Created by Hery Kang on 14/7/16.
//  Copyright © 2016 hekadev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multipleText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    var currentResult: Int = 0
    var result: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel() {
        resultLabel.text = "\(currentResult) + \(result) = \(currentResult + result)"
        currentResult = currentResult + result
    }
    
    func isDone() -> Bool{
        if currentResult >= 50 {
            return true
        }
        return false
    }

    @IBAction func onPlayBtn(sender: UIButton) {
        if multipleText.text != "" && multipleText.text != nil {
            logo.hidden = true
            multipleText.hidden = true
            playBtn.hidden = true
            
            resultLabel.hidden = false
            addBtn.hidden = false
            
            currentResult = 0
            result = Int(multipleText.text!)!
        }
    }
    
    @IBAction func onAddBtn(sender: UIButton) {
        updateLabel()
        if isDone() {
            logo.hidden = false
            multipleText.hidden = false
            playBtn.hidden = false
            
            resultLabel.hidden = true
            addBtn.hidden = true
        }
    }
}

