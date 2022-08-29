//
//  SettingsViewController.swift
//  Prework
//
//  Created by Guanting Li on 8/29/22.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var box1TextField: UITextField!
    @IBOutlet weak var box2TextField: UITextField!
    @IBOutlet weak var box3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let box1 = Double(UserDefaults.standard.integer(forKey: "Box1"))
        let box2 = Double(UserDefaults.standard.integer(forKey: "Box2"))
        let box3 = Double(UserDefaults.standard.integer(forKey: "Box3"))
        box1TextField.text = String(box1)
        box2TextField.text = String(box2)
        box3TextField.text = String(box3)
//        tipControl.setTitle(String(box1), forSegmentAt: 0)
//        tipControl.setTitle(String(box2), forSegmentAt: 1)
//        tipControl.setTitle(String(box3), forSegmentAt: 2)
    }
    
    @IBAction func updateDefaultValue(_ sender: Any) {
        UserDefaults.standard.set(Int(box1TextField.text!) ?? 15, forKey: "Box1")
        UserDefaults.standard.set(Int(box2TextField.text!) ?? 18, forKey: "Box2")
        UserDefaults.standard.set(Int(box3TextField.text!) ?? 20, forKey: "Box3")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
