//
//  ViewController.swift
//  RandomUIButtonColor
//
//  Created by Eric Cauble on 5/27/15.
//  Copyright (c) 2015 Eric Cauble. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonStyles()
    }
    
    
    //rounds button edge, adds drop shadow
    func setUpButtonStyles(){
        button1.layer.shadowOpacity = 0.5
        button1.layer.shadowOffset = CGSize(width: 3.0, height: 2.0)
        button1.layer.shadowRadius = 5.0
        button1.layer.shadowColor = UIColor.blackColor().CGColor
        button1.layer.cornerRadius = 5
        
        
        button2.layer.shadowOpacity = 0.5
        button2.layer.shadowOffset = CGSize(width: 3.0, height: 2.0)
        button2.layer.shadowRadius = 5.0
        button2.layer.shadowColor = UIColor.blackColor().CGColor
        button2.layer.cornerRadius = 5
        
        
        button3.layer.shadowOpacity = 0.5
        button3.layer.shadowOffset = CGSize(width: 3.0, height: 2.0)
        button3.layer.shadowRadius = 5.0
        button3.layer.shadowColor = UIColor.blackColor().CGColor
        button3.layer.cornerRadius = 5
    }
    
    
    //returns a UIColor with three random RBG values
    func getRandomUIColor() -> UIColor{
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    
    
    @IBAction func button1Pressed(sender: AnyObject) {
        var randomColor : UIColor = getRandomUIColor()
        button1.backgroundColor = randomColor
        button2.backgroundColor = randomColor
        println(randomColor.description)
    }
    
    
    
    @IBAction func button2Pressed(sender: AnyObject) {
        view.backgroundColor = getRandomUIColor()
    }
    
    
    @IBAction func button3Pressed(sender: AnyObject) {
        button3.backgroundColor = getRandomUIColor()
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    deinit{
        println("ViewController was deinitialized \n")
    }

}
//ends class ViewController

