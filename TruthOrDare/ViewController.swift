//
//  ViewController.swift
//  TruthOrDare
//
//  Created by Janice He on 8/11/18.
//  Copyright © 2018 Janice He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var truthButton: UIButton!
    @IBOutlet weak var dareButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    
    
    var truthArray: [String] = ["When did you have your first kiss?", "What is your biggest regret?", "What is your biggest fear?", "What is your last text message?"]
    
    lazy var truthCount: Int = truthArray.count
    
    var dareArray: [String] = ["Give someone your phone and let them send one text to anyone in your contacts", "Text someone you are close to and tell them you no longer want to talk to them", "Post something good about Trump on your Facebook status"]
    
    lazy var dareCount: Int = dareArray.count

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backButton.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func truthButton(_ sender: UIButton) {
        let randomTruthIndex: Int =  Int(arc4random_uniform(UInt32(truthCount)))
        resultLabel.text = truthArray[randomTruthIndex]
        hideTruthDareButtons()
    }
    
    @IBAction func dareButton(_ sender: UIButton) {
        let randomDareIndex: Int = Int(arc4random_uniform(UInt32(dareCount)))
        resultLabel.text = dareArray[randomDareIndex]
        hideTruthDareButtons()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        homepage()
    }
    
    func homepage() {
        truthButton.isHidden = false
        dareButton.isHidden = false
        resultLabel.isHidden = true
        backButton.isHidden = true
    }
    
    func hideTruthDareButtons() {
        truthButton.isHidden = true
        dareButton.isHidden = true
        resultLabel.isHidden = false
        backButton.isHidden = false
    }
    
    
}

