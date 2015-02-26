//
//  CountViewController.swift
//  diet.app
//
//  Created by KINARI NISHIYAMA on 2015/02/26.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var number = 10
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    label.text = "\(number)"
        number = 10
        
    }
    
    
    @IBAction func minus (){
        number = number - 1
        label.text="\(number)"
        
        if number <= -1 {
            var next = NextViewController()
            self .presentViewController(next, animated: false, nil)
            
            let mySecondViewController = UIStoryboard(name: "next", bundle: nil).instantiateViewControllerWithIdentifier("next") as UIViewController
        }
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
