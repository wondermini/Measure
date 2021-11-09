//
//  ViewController.swift
//  Measure
//
//  Created by JUNGMIN KIM on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textInput: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertMeasure(_ sender: Any) {
        let yard = Double(textInput.text ?? "0")! * 1.09361
        textLabel.text = String(yard)
    }
}

