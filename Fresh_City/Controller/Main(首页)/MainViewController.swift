//
//  MainViewController.swift
//  Fresh_City
//
//  Created by 胡彭飞 on 2017/11/10.
//  Copyright © 2017年 ztq. All rights reserved.
//

import UIKit
private let mainTitleBarH :CGFloat = 44.0;
private let jingxuanTableViewCell="jingxuanTableViewCell"
class MainViewController: UIViewController {
    lazy var tableView = UITableView(frame: CGRect(x: 0, y: 64.0, width: kScreenWidth, height: kScreenHeight - 64.0  - 49.0 - mainTitleBarH))
    var titleBar :MainTitleBar?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBarType()
        setTitleBar()
        setTable()
        
    }



}
extension MainViewController{
    func setBarType() {
        navigationController?.navigationBar.barTintColor=UIColor(displayP3Red: 36/255.0, green: 38/255.0, blue: 45/255.0, alpha: 1)
        let titlelabel=UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 44))
        titlelabel.text="美食街"
        titlelabel.textColor=UIColor.white
        titlelabel.font=UIFont.systemFont(ofSize: 18)
        titlelabel.textAlignment=NSTextAlignment.center
        navigationItem.titleView=titlelabel
        
        guard let cityButton  = Bundle.main.loadNibNamed("CitySelectBarButton", owner: self, options:nil)
             else{
            
            return
        }
         let cityButton1 = cityButton[0] as! CitySelectBarButton
        cityButton1.frame=CGRect(x: 10, y: 0, width: 100, height: 44);
        
        navigationController?.navigationBar.addSubview(cityButton1)
//        navigationItem.setLeftBarButton(UIBarButtonItem(customView: cityButton1), animated: true)
//        navigationItem.leftBarButtonItem?.width=100;
        
        let searchBtn = UIButton(frame: CGRect(x: kScreenWidth-50, y: 0, width: 50, height: 44))
        searchBtn.setImage(UIImage(named: "icon_search"), for: UIControlState.normal)
        searchBtn.imageEdgeInsets=UIEdgeInsetsMake(0, 10, 0, 0)
        searchBtn.addTarget(self, action: #selector(searchBtnClick), for: UIControlEvents.touchUpInside)
//        navigationItem.setRightBarButton(UIBarButtonItem(customView: searchBtn), animated: true)
        navigationController?.navigationBar.addSubview(searchBtn)
    }
    func setTable(){
       
        tableView.contentInset=UIEdgeInsetsMake(mainTitleBarH, 0, 0, 0)
//        tableView.estimatedRowHeight=300
//        tableView.bringSubview(toFront: titleBar)
//        tableView.register(MainjingxuanTableViewCell.classForCoder(), forCellReuseIdentifier: "jingxuanTableViewCell")
        tableView.register(UINib.init(nibName: "MainjingxuanTableViewCell", bundle: nil), forCellReuseIdentifier: "jingxuanTableViewCell")
        tableView.delegate=self
        tableView.dataSource=self
         view.addSubview(tableView)
        view.bringSubview(toFront: titleBar!)
      
        
    }
    @objc func searchBtnClick(){
        
        
    }
    func setTitleBar() {
        guard let titlebar=Bundle.main.loadNibNamed("MainTitleBar", owner: self, options: nil) else {
         return
        }
        let titleBar1   = titlebar[0] as! MainTitleBar
        titleBar1.frame=CGRect(x: 0, y: 64, width: kScreenWidth, height: 44)
        view.addSubview(titleBar1)
        titleBar1.delegate=self
        titleBar = titleBar1
    }
}
extension MainViewController:UITableViewDelegate,UITableViewDataSource{
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let tabbleCell = tableView.dequeueReusableCell(withIdentifier: jingxuanTableViewCell, for: indexPath)
        return tabbleCell
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300;
    }
}
extension MainViewController:MainTitleBarDelegate{
    func btnClick(with view: MainTitleBar, btn Index: NSInteger) {
        
    }
    
}
