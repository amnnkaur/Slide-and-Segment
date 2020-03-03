//
//  SecondViewController.swift
//  Day2W2020
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgCircus: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

     //   imgCircus.image = UIImage(named: "lion")
        
      //  imgCircus.image = #imageLiteral(resourceName: "gorilla.png")
     //   imgCircus.backgroundColor  = UIColor.blue
       // imgCircus.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    

    @IBAction func segImageChange(_ sender: UISegmentedControl)
    {
          displayImage(index: sender.selectedSegmentIndex)
    }
    
    @IBAction func slidChangeImage(_ sender: UISlider)
    {
        //print(sender.value)
       // print(Int(sender.value))
        let n = Int(sender.value)
        displayImage(index: n)
    }
    
    private func displayImage(index: Int)
    {
        var imageName = String()
        switch index{
        case 0:
            imageName = "elephant"
        case 1:
            imageName = "gorilla"
        case 2:
            imageName = "home"
        case 3:
            imageName = "icecream"
        case 4:
            imageName = "lion"
        default:
            print("NO IMAGE")
        }
        
        self.imgCircus.image = UIImage(named: imageName)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
