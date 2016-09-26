//
//  ViewController.swift
//  TM_S4_26_1
//
//  Created by admin on 9/21/16.
//  Copyright © 2016 tien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textFieldPassword: UITextField!

    @IBOutlet var textFieldUser: UITextField!
    
    var users = ["henry":"123", "obama":"1", "ok":"567"]
    
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional
        /*
        for (tendangnhap, matkhau) in users {
        
            print("Ten dang nhap \(tendangnhap)")
            print(matkhau)
         }
        */
        users["obama"] = "newvalue"
        for (tentaikhoan, password) in users {
        
            print("\(tentaikhoan) :\(password)")
            
        }
       
    }
    @IBAction func actionLogin(sender: AnyObject) {
        
        if let password = users[textFieldUser.text!] {
        
            if password == textFieldPassword.text {
            
                print("Đăng nhập thành công")
            }
            else  {
            
                print("Mật khẩu không đúng")
            }
        }
        else {
        
            print("Tài khoản này không tồn tại")
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// them nut them tai khoan, 
}
