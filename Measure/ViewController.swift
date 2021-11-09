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
        let converter = Converter()
                
        textLabel.text = converter.convertUnit(input: textInput.text ?? "")
    }
}

