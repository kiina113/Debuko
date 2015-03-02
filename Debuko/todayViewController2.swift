//
//  todayViewController2.swift
//  Debuko
//
//  Created by KINARI NISHIYAMA on 2015/02/28.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class todayViewController2: UIViewController {
    
    //脱デブまでアウトレット
    @IBOutlet weak var label: UILabel!
    
    //ディフォルト
    var defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var aim : Double = defaults.doubleForKey("aimDouble")
        var todayWeight : Double = defaults.doubleForKey("todayDouble")
        label.text="\(todayWeight - aim)"
        defaults.synchronize()
        println("\(todayWeight - aim)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
