//
//  ViewController.swift
//  FirstApp
//
//  Created by John Mekus on 8/30/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var awesomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("viewDidLoad has executed!")
    }


    @IBAction func andyChapmanButtonPressed(_ sender: UIButton) {
        print("It was pressed.")
        awesomeLabel.text = "You are awesome!"
    }
}

