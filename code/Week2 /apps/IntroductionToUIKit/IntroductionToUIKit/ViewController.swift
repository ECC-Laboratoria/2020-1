//
//  ViewController.swift
//  IntroductionToUIKit
//
//  Created by Néstor I. Martínez Ostoa on 14/03/20.
//  Copyright © 2020 Néstor I. Martínez Ostoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleButton: UIButton!
    @IBOutlet weak var titleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
        titleLabel.text = "Néstor"
//        titleButton.setTitle("Title Button", for: .normal)
        titleButton.tintColor = .white
        titleButton.backgroundColor = .purple
        titleSwitch.setOn(false, animated: true)
    }
    
    @IBAction func titleButtonClicked(_ sender: UIButton) {
        //this method is called everytime the user clicks inside the button
        if let titleForButton = self.titleButton.titleLabel?.text {
            print("User clicked on \(titleForButton)")
        } else {
            print("User clicked on an empty button")
        }
        
        let alertActionController = UIAlertController(title: "Button title", message: self.titleButton.titleLabel?.text ?? "no name", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancelAlert = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let destructiveAlert = UIAlertAction(title: "Destructive", style: .destructive, handler: nil)
        alertActionController.addAction(okAlert)
        alertActionController.addAction(cancelAlert)
        alertActionController.addAction(destructiveAlert)
        self.present(alertActionController, animated: true, completion: nil)
    }
    
    @IBAction func switchTriggered(_ sender: Any) {
        self.titleLabel.text = self.titleSwitch.isOn ? "Martínez" : "Néstor"
    }
    
}
