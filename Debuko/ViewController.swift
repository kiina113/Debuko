//
//  ViewController.swift
//  Debuko
//
//  Created by KINARI NISHIYAMA on 2015/02/26.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    var name = "名前"
    @IBOutlet weak var highTextField: UITextField!
    var high = 150.0
    @IBOutlet weak var weightTextField: UITextField!
    var weight = 35.0
    @IBOutlet weak var aimTextField: UITextField!
    var aim = 30.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(name, forKey:"nameString")
        defaults.setDouble(high, forKey: "highDouble")
        defaults.setDouble(weight, forKey: "weightDouble")
        defaults.setDouble(aim, forKey: "aimDouble")
        defaults.synchronize()
                   }
    override func viewWillAppear(animated: Bool){
        //ユーザーデフォルトを用意
        var defaults = NSUserDefaults.standardUserDefaults()
        //データを読み出し
        var name2: AnyObject = defaults.objectForKey("nameString")!
        var high2: AnyObject = defaults.doubleForKey("highDouble")
        var weghit2: AnyObject = defaults.doubleForKey("weightDouble")
        var aim2: AnyObject = defaults.doubleForKey("aimDouble")
        

    }
    
    
    @IBAction func tapNextbt(sender: UITextField) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(sender.text, forKey: "nameString")
        defaults.synchronize()

    }
    
    @IBAction func tapNextbt2(sender: UITextField){
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Double(), forKey: "highDouble")
        defaults.synchronize()

    }
    
    @IBAction func tapNextbt3(sender: UITextField){
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Double(), forKey: "weightDouble")
        defaults.synchronize()

    }
    
    @IBAction func tapNextbt4 (sender: UITextField){
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Double(), forKey: "aimDouble")
        defaults.synchronize()

    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

