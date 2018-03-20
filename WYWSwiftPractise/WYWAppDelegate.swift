//
//  WYWAppDelegate.swift
//  WYWSwiftPractise
//
//  Created by WYW on 2018/3/8.
//  Copyright © 2018年 WYW. All rights reserved.
//

import UIKit

@UIApplicationMain
class WYWAppDelegate: UIResponder,UIApplicationDelegate {
    var window: UIWindow?
    var tabbarController: WYWTabBarController?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        WYWWeakReferenceTest().test()
        // Override point for customization after application launch.
//        self.setupWindow()
        
        return true
    }
    
    func setupWindow(){
        
        self.window = UIWindow.init(frame: UIScreen .main.bounds)
        self.window! = UIWindow(frame:UIScreen.main.bounds);
        self.window!.backgroundColor = UIColor.white;
        self.tabbarController = WYWTabBarController()
        self.window!.rootViewController = self.tabbarController
        self.window! .makeKeyAndVisible()
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        
    }
    
    
    func wwTest(){
        
        print(self.window)
        print(self.window!)
        self.window = nil
        print(self.window ?? UIWindow.init())
        
        var str:String?
        str = "str"
        print(str!)
        str? = "str"
        if str != nil {
            print(str!)
        }
        let str2 : String
        //        var str3 : String?
        //如果是下边这样就会有错 有赋值 str3 = nil的情况下还可以 否则就不可以
        let str3 : String?
        str3 = nil
        
        print(str3)
        let str1:String!
        str1 = str
        print(str1)
        
        (UINavigationBar.appearance()).isTranslucent = false
        //修改导航栏的背景色
        (UINavigationBar.appearance()).barTintColor = UIColor.blue
        //修改的返回的位置的文字和图标的颜色
        UINavigationBar.appearance().tintColor = UIColor.red
        //修改title的属性
        (UINavigationBar.appearance()).titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        (UINavigationBar.appearance()).titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white,NSAttributedStringKey.font:UIFont.systemFont(ofSize: 16.0)]
        //去除navigationbar底部的一个黑条 设置backgroundColor不会起作用
        (UINavigationBar.appearance()).shadowImage = UIImage.init()
        //下边的设置不会起作用
        //        UINavigationBar.appearance().backgroundColor = UIColor.blue
        
        (UITabBar.appearance()).isTranslucent = false
        //设置TabBar的背景色
        (UITabBar.appearance()).barTintColor = UIColor.black
        //设置的TabbarItem的文字的颜色
        (UITabBar.appearance()).tintColor = UIColor.red
        //下边的设置背景色不会起作用
        //       (UITabBar.appearance()).backgroundColor = UIColor.black
        
        //参考地址：http://www.cocoachina.com/bbs/read.php?tid-1686485.html
        UIApplication.shared.keyWindow
        UIApplication.shared.delegate?.window
    }
    
    //MARK: - 一些体会
    func wwReadMe(){
        /*
         *  Swift中 @UIApplicationMain 用于指定应用启动的入口
            在Swift中没有看见像Objective-C相关的 main.m 的文件 在main函数的入口指定AppDelegate
         *  self.window虽然是可选值 不大清楚为什么self.window起初就是有值的可以对其进行强行解包赋值 不过自己还是在对self.window 明确赋值之前不要强行解包
            在没有设置启动图的情况下但是在设置了launchScreenFile的时候可以全屏展示
            在没有设置LaunchScreenFile并且没有指定的Launch的界面来撑起来界面的时候
            在Xcode9.2的情况下 界面上下有黑条 并且打印的self.window 的尺寸为320 X 480 其实我们在做iPhoneX的适配的过程中可能就已经遇到过类似的问题 如果没有设置iPhoneX的尺寸的启动图 那么在iPhoneX的设备上默认 375 * 667的方式呈现的界面
         * 在赋值方面
            左侧是可选值 右侧是可选值或者是确定的值都可以
            ? ! ??
            ? 在声明后就声明为了可选值
            ! 在声明的时候隐式的就看作了可以正常地解包的情况
            ?? 可以用于像判断某个可选值是否有值 为nil的情况下在后边跟上默认值
         
         
         
         
         
         
         */
    }
}
