//
//  SettingsViewController.swift
//  tiptop
//
//  Created by Tom Brown on 12/29/15.
//  Copyright © 2015 not. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    let tipPercentages = [0.18, 0.2, 0.22]
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBAction func defaulTipAmountChanged(sender: AnyObject) {
        

        let selectedSegment = defaultTipControl.selectedSegmentIndex
        let tipPercentage = tipPercentages[selectedSegment]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercentage, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("OK")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipAmount = defaults.doubleForKey("default_tip_percentage")
        defaultTipControl.selectedSegmentIndex = tipPercentages.indexOf(defaultTipAmount) ?? 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

