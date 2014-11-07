//
//  SecondViewController.swift
//  UIAlertViewDemo
//
//  Created by ruby on 14-11-7.
//  Copyright (c) 2014年 ruby. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var myButton: UIButton!
    var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 创建按钮并设置属性
        myButton = UIButton(frame: CGRectMake(100, 100, 195, 30))
        myButton.setTitle("点击弹出Alert", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
        // 创建标签并设置属性
        myLabel = UILabel(frame: CGRectMake(100, 150, 195, 17))
        myLabel.textColor = UIColor.blackColor()
        myLabel.text = "使用storyboard实现"
        
        // 将按钮和标签添加到View
        self.view.addSubview(myButton)
        self.view.addSubview(myLabel)
        
        // 添加按钮的点击动作
        myButton.addTarget(self, action: "popButtonTouchUpInside:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func popButtonTouchUpInside(sender: AnyObject) {
        // 弹出最默认的Alert
        var myDefaultAlert: UIAlertView! = UIAlertView(title: "AlertDemo", message: "使用storyboard实现", delegate: nil, cancelButtonTitle: "Cancel")
        myDefaultAlert.alertViewStyle = UIAlertViewStyle.Default
        myDefaultAlert.show()
    }

}

