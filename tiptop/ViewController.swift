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
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        let billAmount = Double(billField.text!)

        if let billAmount = billAmount {
            tipLabel.text = formatCurrency(billAmount)
            totalLabel.text = formatCurrency(billAmount)
        }
    }
    
    func formatCurrency(val: Double) -> String{
        return String(format: "$%.2f", val)
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

