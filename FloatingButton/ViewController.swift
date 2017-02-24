//
//  ViewController.swift
//  FloatingButton
//
//  Created by Mayank Gupta on 22/02/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit
import KCFloatingActionButton

class ViewController: UIViewController ,KCFloatingActionButtonDelegate{
    
    
    override func viewDidAppear(_ animated: Bool) {
        layoutFAB()
    }
    
    func layoutFAB() {
        let fab = KCFloatingActionButton()
        let item = KCFloatingActionButtonItem()
        item.buttonColor = UIColor(red: 188/255, green: 46/255, blue: 35/255, alpha: 1)
        item.circleShadowColor = UIColor.red
        item.titleShadowColor = UIColor(red: 188/255, green: 46/255, blue: 35/255, alpha: 0.5)
        item.title = "Custom item"
        item.handler = { item in
            
        }
        
        //fab.addItem(title: "I got a title")
        
        fab.addItem("Become an Admin", icon: UIImage(named: "Contacts Filled.png")) { item in
            let alert = UIAlertController(title: "Become an Admin", message: "Send a request to be an admin and be able to write notices", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Send Request", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        //fab.addItem(item: item)
        fab.fabDelegate = self
        
        self.view.addSubview(fab)
        
    }

}

