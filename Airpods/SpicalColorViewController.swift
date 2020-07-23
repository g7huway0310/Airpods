//
//  SpicalColorViewController.swift
//  Airpods
//
//  Created by guowei on 2020/7/24.
//  Copyright © 2020 guowei. All rights reserved.
//

import UIKit

class SpicalColorViewController: UIViewController {

    let ImageArray=["spred","spblue","spgreen"]
    
    //取前一頁按下的亂數
    var NumberOfImage=0
    
    @IBOutlet weak var theG: UILabel!
    @IBOutlet weak var theR: UILabel!
    @IBOutlet weak var theB: UILabel!
    
    
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var Redlabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    
    @IBOutlet weak var AirpodsImageView: UIImageView!
    
    @IBOutlet weak var TextInputlabel: UILabel!
    @IBOutlet weak var InputTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AirpodsImageView.image=UIImage(named: ImageArray[NumberOfImage])
        
        print(NumberOfImage)
        
        switch NumberOfImage {
        case 0:
            theR.isHidden=false
            Redlabel.isHidden=false
           
        case 1:
            theB.isHidden=false
            BlueLabel.isHidden=false
        default:
            theG.isHidden=false
            GreenLabel.isHidden=false
        }
        
    }
    

    @IBAction func Textchange(_ sender: UITextField) {
        TextInputlabel.text=sender.text
        
    }
    
    @IBAction func ChangeText(_ sender: UITextField) {
        TextInputlabel.text=sender.text
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
