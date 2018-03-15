//
//  WYWTabBarController.swift
//  WYWSwiftPractise
//
//  Created by WYW on 2018/3/9.
//  Copyright © 2018年 WYW. All rights reserved.
//

import UIKit

class WYWTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupChildViewControllers()
        self.setupNavigationBarAppearance()
        self.setupTabBarAppearance()
        
    }
    
    func setupChildViewControllers(){
        let tabBarTitleArr = ["首页","消息","Live","发现","我的"]
        let tabBarItemImageStrArr = ["home","home","home","home","home","home"]
        let childViewControllersArr = [WYWHomeViewController(),WYWMessageViewController(),WYWLiveViewController(),WYWDiscoverViewController(),WYWMineViewController()]
        let navigationControllersArr = NSMutableArray.init(capacity: tabBarTitleArr.count)
        
        for (index,vc) in childViewControllersArr.enumerated() {
            vc.navigationItem.title = tabBarTitleArr[index]
            vc.tabBarItem.title = tabBarTitleArr[index]
//            vc.title = tabBarItemImageStrArr[index]
            vc.tabBarItem.image = UIImage.init(named: tabBarItemImageStrArr[index])?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
//            vc.tabBarItem.image = UIImage.init(named: "home")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            vc.tabBarItem.selectedImage = UIImage.init(named: ("home_sel"))?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            let navigationController = UINavigationController.init(rootViewController: childViewControllersArr[index])
            navigationControllersArr .add(navigationController)
        }
        self.viewControllers = navigationControllersArr as! [UINavigationController]
        
    }
    
    
    //MARK: - 设置导航样式
    func setupNavigationBarAppearance(){
        
        let navigationBar = UINavigationBar.appearance()
        let titleTextAttributes:[NSAttributedStringKey : Any]?
        titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white,NSAttributedStringKey.font:UIFont.systemFont(ofSize: 16.0)]
        
        navigationBar.isTranslucent = false
        navigationBar.tintColor = UIColor.red
        navigationBar.titleTextAttributes = titleTextAttributes
        navigationBar.barTintColor = UIColor.blue
        navigationBar.shadowImage = UIImage.init()
        //        navigationBar.setBackgroundImage(UIImage.init(named: "Slice 1"), for: UIBarMetrics.default)
        //如果是设置的导航栏的图片尺寸不合适的话会出现 重复排布的问题 navigationBar.setBackgroundImage(UIImage.init(named: "Slice 1"), for: UIBarPosition.topAttached, barMetrics: UIBarMetrics.default)
        // navigationBar.setBackgroundImage(UIImage.init(named: "Slice 1"), for: UIBarMetrics.default)
    }
    
    //MARK: - 设置Tabbar样式
    func setupTabBarAppearance(){
        let tabBar:UITabBar
        tabBar = UITabBar.appearance()
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.black
        tabBar.barTintColor = UIColor.gray
        tabBar.tintColor = UIColor.red
        tabBar.shadowImage = UIImage.init()
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
