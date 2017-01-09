//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sam Burrell on 10/3/16.
//  Copyright © 2016 Sam Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var total = 0.0
    var people = 1
    
    @IBOutlet var UITapGestureRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var totalCost: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "greenImage.png")
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    @IBAction func tipTen(_ sender: AnyObject) {
        calc(x: 0.10)
    }
    
    @IBAction func fifteenTip(_ sender: AnyObject) {
        calc(x: 0.15)
    }
    
    @IBAction func tipTwenty(_ sender: AnyObject) {
        calc(x: 0.20)
    }
    
    @IBAction func tipTwentyFive(_ sender: AnyObject) {
        calc(x: 0.25)
    }
    
    @IBAction func buttonDown(_ sender: AnyObject) {
        if people == 1 {
            return
        }
        people -= 1
        peopleLabel.text = String(people)
    }
    
    @IBAction func buttonUp(_ sender: AnyObject) {
        people += 1
        peopleLabel.text = String(people)
    }
    
    
    
    
    
    
    func calc(x : Double)
    {
        var total = Double (billAmount.text!)
        var tip = total! * x
        var cost = total! + tip
        tip = tip / Double (people)
        cost = cost / Double (people)
        tipTotal.text = "$" + String(format :"%.2f",tip)
        totalCost.text = "$" + String(format : "%.2f" ,cost)
        
    }
}
