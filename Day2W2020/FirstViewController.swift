//
//  ViewController.swift
//  Day2W2020
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShowAlert(_ sender: UIButton)
    {
        if sender.tag == 0 //Show alert
        {
        let alertController = UIAlertController(title: "Error", message:
            "Hello, world!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "default", style: .default))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
       // alertController.addAction(UIAlertAction(title: "default2", style: .default))
       // alertController.addAction(UIAlertAction(title: "Destructive1", style: .destructive))
        
            alertController.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (sender) in
                print("Click Destructive")
            }))
        
        self.present(alertController, animated: true, completion: nil)
        }
        
        if sender.tag == 1 //show action
        {
            let alertController = UIAlertController(title: "Error", message:
                "Hello, world!", preferredStyle: .actionSheet)
             alertController.addAction(UIAlertAction(title: "default", style: .default))
             alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            // alertController.addAction(UIAlertAction(title: "default2", style: .default))
             alertController.addAction(UIAlertAction(title: "Destructive", style: .destructive))
            
             self.present(alertController, animated: true, completion: nil)
             }
        }
        
    }


