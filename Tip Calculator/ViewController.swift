//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mark Cube on 8/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLable: UILabel!
    
    
    @IBOutlet weak var totalLable: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tipArr = [0.15,0.18,0.2]
        
        let tip = bill * tipArr[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipLable.text = String(format: "$%.2f", tip)
        totalLable.text = String(format: "$%.2f", total)
    }
}

