//
//  ViewController.swift
//  FirstApp
//
//  Created by John Mekus on 8/30/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        awesomeLabel.text = ""
        // Do any additional setup after loading the view.
        
    }


    @IBAction func andyChapmanButtonPressed(_ sender: UIButton) {
        
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber += 1
        if imageNumber == 10
        {
            imageNumber = 0
        }
        
        //        let awesomeMessage = "You are awesome!"
        //        let greatMessage = "You are great!"
        //        let daBombMessage = "You are da bomb!"
        //
        //        if awesomeLabel.text == awesomeMessage
        //        {
        //            awesomeLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        }
        //        else if awesomeLabel.text == greatMessage
        //        {
        //            awesomeLabel.text = daBombMessage
        //            imageView.image = UIImage(named: "image6")
        //        }
        //        else
        //        {
        //            awesomeLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image4")
        //        }
    }
}



