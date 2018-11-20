//
//  InicioViewController.swift
//  Adivinator
//
//  Created by Research Mobile on 17/04/18.
//  Copyright © 2018 Research Mobile. All rights reserved.
//

import UIKit
import SwiftyButton

class InicioViewController: UIViewController {
    
    @IBOutlet weak var btn1: PressableButton!
    @IBOutlet weak var btn2: PressableButton!
    @IBOutlet weak var view_content: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "egiptin.jpg")!)
        view_content.layer.cornerRadius = 10
        view_content.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        view_content.layer.shadowColor = UIColor.black.cgColor
        view_content.layer.shadowRadius = 3.0
        view_content.layer.shadowOpacity = 1.0
        view_content.layer.shadowOffset = CGSize(width: 4, height: 4)
        view_content.layer.masksToBounds = false
        view_content.alpha = 0.85;
        
        btn1.layer.cornerRadius = 10
        btn1.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        btn1.layer.shadowColor = UIColor.black.cgColor
        btn1.layer.shadowRadius = 3.0
        btn1.layer.shadowOpacity = 1.0
        btn1.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn1.layer.masksToBounds = false
        btn1.alpha = 0.85;
        
        btn2.layer.cornerRadius = 10
        btn2.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        btn2.layer.shadowColor = UIColor.black.cgColor
        btn2.layer.shadowRadius = 3.0
        btn2.layer.shadowOpacity = 1.0
        btn2.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn2.layer.masksToBounds = false
        btn2.alpha = 0.85;
        navigationController?.navigationBar.tintColor = UIColor.white;
        navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "wowin.jpg")!)
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowRadius = 3.0
        navigationController?.navigationBar.layer.shadowOpacity = 1.0
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 4, height: 4)
        navigationController?.navigationBar.layer.masksToBounds = false
        let button : PressableButton = btn1
        button.colors = .init(button: UIColor(red:0.62, green:0.37, blue:0.78, alpha:1.0), shadow: UIColor(red:0.48, green:0.23, blue:0.63, alpha:1.0))
        button.shadowHeight = 5
        button.cornerRadius = 5
        
        let button1 : PressableButton = btn2
        button1.colors = .init(button: UIColor(red:0.62, green:0.37, blue:0.78, alpha:1.0), shadow: UIColor(red:0.48, green:0.23, blue:0.63, alpha:1.0))
        button1.shadowHeight = 5
        button1.cornerRadius = 5
        // Do any additional setup after loading the view.
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
