//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Ryan Garfinkel on 4/7/25.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomBgColor = changeColor()
        view.backgroundColor = randomBgColor
        
        let randomTextColor = changeColor()
        nameLabel.textColor = randomTextColor
        universityLabel.textColor = randomTextColor
        jobLabel.textColor = randomTextColor
    }
    
    func changeColor() -> UIColor {

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}

