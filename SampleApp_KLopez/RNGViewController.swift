//
//  RNGViewController.swift
//  SampleApp_KLopez
//
//  Created by Keith and Marshneille Lopez on 11/19/16.
//  Copyright © 2016 icc. All rights reserved.
//

import UIKit
import GameplayKit

class RNGViewController: UIViewController {

    /* OUTLETS */
    
    @IBOutlet weak var startField: UITextField?
    @IBOutlet weak var endField: UITextField?
    @IBOutlet weak var resultLabel: UILabel?
    
    /* Mark Properties */
    lazy var alertCtrl: UIAlertController = {
        let alert = UIAlertController(title: "Error", message: "Please enter a valid start number and end number", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        return alert
    }()
    
    /* Mark: Actions */
    
    
    @IBAction func generateNumber() {
        guard let lower = Int((startField?.text!)!), let upper = Int((endField?.text!)!)
        else
        {
            showErrorAlert()
            return
        }
        let distribution = GKRandomDistribution(lowestValue: lower, highestValue: upper)
        resultLabel?.text = "Result: \(distribution.nextInt())"
    }
    
    private func showErrorAlert()
    {
        present(alertCtrl, animated: UIView.areAnimationsEnabled, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
