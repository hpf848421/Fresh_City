//
//  BaseTabBarViewController.swift
//  Fresh_City
//
//  Created by 胡彭飞 on 2017/11/10.
//  Copyright © 2017年 ztq. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
            tabBar.tintColor=UIColor(displayP3Red: 255/255.0, green:87/255.0, blue: 86/255.0, alpha: 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
