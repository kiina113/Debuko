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
    @IBOutlet weak var highTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var aimTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
        var defaults = NSUserDefaults.standardUserDefaults()
        var name = "名前"
        defaults.setObject(name, forKey:"nameString")
        defaults.setDouble(150.0, forKey: "highDouble")
        defaults.setDouble(60.0, forKey: "weightDouble")
        defaults.setDouble(35.0, forKey: "aimDouble")
        defaults.synchronize()
        
       
                   }
    
    
    
    override func viewWillAppear(animated: Bool){
        //ユーザーデフォルトを用意
        var defaults = NSUserDefaults.standardUserDefaults()
        //データを読み出し
        var name2: String = defaults.stringForKey("nameString")!
        var high: Double = defaults.doubleForKey("highDouble")
        var weghit: Double = defaults.doubleForKey("weightDouble")
        var aim: Double = defaults.doubleForKey("aimDouble")
        
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

