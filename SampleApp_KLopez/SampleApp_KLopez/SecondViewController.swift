//
//  SecondViewController.swift
//  SampleApp_KLopez
//
//  Created by Keith and Marshneille Lopez on 11/19/16.
//  Copyright © 2016 icc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    /* Mark: Outlets */
    
    @IBOutlet weak var stepperValueLabel: UILabel!
    
    /* Mark Actions */
 
    @IBAction func showModalWindow(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }
    
    
    
    @IBAction func changeStepper(_ sender: UIStepper) {
        var dbStepperValue : Double
        var intStepperValue: Int
        dbStepperValue = sender.value
        intStepperValue = Int(dbStepperValue)
        stepperValueLabel.text = "Step: \(intStepperValue)"
    }
    
    
    @IBAction func toggleDarkMode(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = UIColor.darkGray
        }
        else
        {
            view.backgroundColor = UIColor.white
        }
    }
    
    lazy var alertCtrl1: UIAlertController = {
        let alert = UIAlertController(title: "ALERT", message: "This is an alert message!!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alert
    }()
    
    lazy var alertCtrl2: UIAlertController = {
        let alert = UIAlertController(title: "ACTION SHEET", message: "This is an Action Sheet!!", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        return alert
    }()
    
    private func showAlert()
    {
        present(alertCtrl1, animated: UIView.areAnimationsEnabled, completion: nil)
    }
    
    private func showActionSheet()
    {
        present(alertCtrl2, animated: UIView.areAnimationsEnabled, completion: nil)
    }
    
    
    @IBAction func showAlertMessage(_ sender: UIButton) {
        showAlert()
    }
    
    @IBAction func showActionSheetMessage(_ sender: UIButton) {
        showActionSheet()
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

