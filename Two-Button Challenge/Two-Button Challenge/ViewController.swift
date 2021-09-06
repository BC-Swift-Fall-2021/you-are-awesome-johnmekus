//
//  ViewController.swift
//  Two-Button Challenge
//
//  Created by John Mekus on 9/1/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        messageLabel.text = "You are awesome!"
        messageLabel.textColor = UIColor.blue
        messageLabel.textAlignment = .left
    }
    
    @IBAction func differentMessage(_ sender: UIButton) {
        messageLabel.text = "You are great!"
        messageLabel.textColor = .systemRed
        messageLabel.textAlignment = .right
    }
}

