//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ale Mohamad on 4/11/17.
//  Copyright © 2017 Ale Mohamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var ballArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

