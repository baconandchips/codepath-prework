//
//  ViewController.swift
//  Prework
//
//  Created by Guanting Li on 8/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let box1 = Double(UserDefaults.standard.integer(forKey: "Box1"))
//        let box2 = Double(UserDefaults.standard.integer(forKey: "Box2"))
//        let box3 = Double(UserDefaults.standard.integer(forKey: "Box3"))
//        tipControl.setTitle(String(box1), forSegmentAt: 0)
//        tipControl.setTitle(String(box2), forSegmentAt: 1)
//        tipControl.setTitle(String(box3), forSegmentAt: 2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let box1 = Int(UserDefaults.standard.integer(forKey: "Box1"))
        let box2 = Int(UserDefaults.standard.integer(forKey: "Box2"))
        let box3 = Int(UserDefaults.standard.integer(forKey: "Box3"))
        tipControl.setTitle(String(box1), forSegmentAt: 0)
        tipControl.setTitle(String(box2), forSegmentAt: 1)
        tipControl.setTitle(String(box3), forSegmentAt: 2)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
    
        // Get Total tip by multiplying tip * tipPercentage
        let box1 = Double(UserDefaults.standard.integer(forKey: "Box1")) / 100
        let box2 = Double(UserDefaults.standard.integer(forKey: "Box2")) / 100
        let box3 = Double(UserDefaults.standard.integer(forKey: "Box3")) / 100
        let tipPercentages = [box1, box2, box3]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

