//
//  ViewController.swift
//  tiptop
//
//  Created by Tom Brown on 12/29/15.
//  Copyright © 2015 not. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = Double(billField.text!) ?? 0.0

        let tipAmount = billAmount*tipPercentage
        let totalAmount = billAmount + tipAmount
    
        tipLabel.text = formatCurrency(tipAmount)
        totalLabel.text = formatCurrency(totalAmount)

    }
    
    func formatCurrency(val: Double) -> String{
        return String(format: "$%.2f", val)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onEditingChanged(self)
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

