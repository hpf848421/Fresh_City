//
//  Home_tab_Button.swift
//  Fresh_City
//
//  Created by 胡彭飞 on 2017/11/10.
//  Copyright © 2017年 ztq. All rights reserved.
//

import UIKit

class Home_tab_Button: UIButton {
    
  
    override func layoutSubviews() {
        super.layoutSubviews()
        for view in subviews {

            if view.isKind(of: UIImageView.classForCoder()){
                view.center.x=bounds.width*0.5
                view.center.y=bounds.height*0.5-10
                
            }
            
            if view.isKind(of: NSClassFromString("UIButtonLabel")!){
                view.center.x=bounds.width*0.5
                view.center.y=bounds.height*0.5+10
                
            }
        }
        
    
    }

}
