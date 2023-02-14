//
//  ResultViewcontroller.swift
//  BMI
//
//  Created by Dauletkhanova Saniya on 09.02.2023.
//

import UIKit



class ResultViewController: UIViewController {

    var bmiValue: String?
    var labelText: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = labelText
        view.backgroundColor = color
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

