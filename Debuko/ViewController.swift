//
//  ViewController.swift
//  Debuko
//
//  Created by KINARI NISHIYAMA on 2015/02/26.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameTextField : UILabel!
    @IBOutlet var highTextField : UILabel!
    @IBOutlet var weightTextField : UILabel!
    @IBOutlet var aimTextField : UILabel!
    var name = "名前"
    var high = 150.0
    var weight = 50.0
    var aim = 40.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. 
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(name, forKey: "nameString")
        defaults.setDouble(high, forKey: "highDouble")
        defaults.setDouble(weight, forKey: "weightDouble")
        defaults.setDouble(aim, forKey: "aimDouble")
        defaults.synchronize()
                           }
    
    
    
    override func viewWillAppear(animated: Bool){
        var defaults = NSUserDefaults.standardUserDefaults()
        var name2 = defaults.stringForKey("nameString")
        var high2 = defaults.doubleForKey("highDouble")
        var weight2 = defaults.doubleForKey("weightDouble")
        var aim2 = defaults.doubleForKey("aimDouble")
        }
      
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

