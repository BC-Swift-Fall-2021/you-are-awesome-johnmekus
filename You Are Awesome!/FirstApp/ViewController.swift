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
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        awesomeLabel.text = ""
        // Do any additional setup after loading the view.
        
    }


    @IBAction func andyChapmanButtonPressed(_ sender: UIButton) {
        
        let messages = ["You are great!",
                        "You are awesome!",
                        "You are the best!",
                        "You got it!",
                        "Woah!"]
        awesomeLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")

        
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



