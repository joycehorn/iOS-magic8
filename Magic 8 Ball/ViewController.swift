//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Joyce Horn on 6/6/18.
//  Copyright © 2018 Horn Fonteles Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImageVIew: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        answerQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        answerQuestion()
    }
    
    func answerQuestion(){
        //ballImageVIew.image = UIImage(named: ballArray[Int(arc4random_uniform(5))])
        ballImageVIew.image = UIImage(named: "ball\(arc4random_uniform(5)+1)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        answerQuestion()
    }

}

