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
    
    
    
    /* Mark Actions */
 
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

