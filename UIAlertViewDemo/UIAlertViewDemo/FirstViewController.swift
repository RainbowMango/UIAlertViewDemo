//
//  FirstViewController.swift
//  UIAlertViewDemo
//
//  Created by ruby on 14-11-7.
//  Copyright (c) 2014年 ruby. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func popButtonTouchUpInside(sender: AnyObject) {
        // 弹出最默认的Alert
        var myDefaultAlert: UIAlertView! = UIAlertView(title: "AlertDemo", message: "使用storyboard实现", delegate: nil, cancelButtonTitle: "Cancel")
        myDefaultAlert.alertViewStyle = UIAlertViewStyle.Default
        myDefaultAlert.show()
        
        // 弹出带有密码输入框的Alert
        var mySecureAlert: UIAlertView! = UIAlertView(title: "AlertDemo", message: "使用storyboard实现", delegate: nil, cancelButtonTitle: "Cancel")
        mySecureAlert.alertViewStyle = UIAlertViewStyle.SecureTextInput
        mySecureAlert.show()
        
        // 弹出带有普通输入框的Alert
        var myPlainAlert: UIAlertView! = UIAlertView(title: "AlertDemo", message: "使用storyboard实现", delegate: nil, cancelButtonTitle: "Cancel")
        myPlainAlert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        myPlainAlert.show()
        
        // 弹出带有账号和密码输入框的Alert
        var myLoginAlert: UIAlertView! = UIAlertView(title: "AlertDemo", message: "使用storyboard实现", delegate: nil, cancelButtonTitle: "Cancel")
        myLoginAlert.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        myLoginAlert.show()
        
        // 弹出带有两个按钮的Alert
        var myTwoButtonAlert: UIAlertView! = UIAlertView(title: "AlertDemo", message: "使用storyboard实现", delegate: nil, cancelButtonTitle: "Cancel")
        myTwoButtonAlert.addButtonWithTitle("Sure")
        myTwoButtonAlert.show()
    }

}

