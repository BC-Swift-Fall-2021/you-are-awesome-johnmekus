//
//  ViewController.swift
//  FirstApp
//
//  Created by John Mekus on 8/30/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    //test
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
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
        
        var newMessageNumber: Int
        repeat
        {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        awesomeLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat
        {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0")
        {
            do
            {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch
            {
                print("ERROR: \(error.localizedDescription) Could not real error from file sound0.")
            }
        }
        else
        {
            print("ERROR: Could not real error from file sound0.")
        }
    }
}



