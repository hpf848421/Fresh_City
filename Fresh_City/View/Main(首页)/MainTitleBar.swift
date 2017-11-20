//
//  MainTitleBar.swift
//  Fresh_City
//
//  Created by 胡彭飞 on 2017/11/10.
//  Copyright © 2017年 ztq. All rights reserved.
//

import UIKit
protocol MainTitleBarDelegate {
    func btnClick(with view :MainTitleBar,btn Index:NSInteger)
    
}
class MainTitleBar: UIView {
    
    var delegate : MainTitleBarDelegate?
    
    lazy var selectView = UIView(frame: CGRect(x: 0, y:self.bounds.height-2, width: 35, height: 2))
    
    override func awakeFromNib() {
        layoutIfNeeded()
        selectView.backgroundColor=UIColor.black
        addSubview(selectView)
        
        for  button in subviews {
            if button.isKind(of: UIButton.classForCoder()){
                    guard  let button1  =  button as? UIButton else{
                        
                        return
                    }
                    button1.addTarget(self, action: #selector(btnClick), for: UIControlEvents.touchUpInside)
                }
        }
    }
    @objc func btnClick(button:UIButton){
        selectView.center.x=button.center.x
        delegate?.btnClick(with: self, btn: button.tag)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        selectView.frame.origin.y=self.bounds.height-4
        for  button in subviews {
            if button.isKind(of: UIButton.classForCoder()){
                guard  let button1  =  button as? UIButton else{
                    
                    return
                }
                if button1.tag==0{
                  self.btnClick(button: button1)
                }
               
            }
        }
    }
}
