//
//  DetailViewController.swift
//  Airpods
//
//  Created by guowei on 2020/7/23.
//  Copyright © 2020 guowei. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var BlueAirpods: UIImageView!
    @IBOutlet weak var GreenAirpods: UIImageView!
    @IBOutlet weak var Redairpods: UIImageView!
    
   
    
    
    
    @IBOutlet weak var Redsilder: UISlider!
    @IBOutlet weak var BlueSilder: UISlider!
    @IBOutlet weak var GreenSilder: UISlider!
    @IBOutlet weak var Airpodsimage: UIImageView!
    @IBOutlet weak var TextInputlabel: UILabel!
    @IBOutlet weak var InputTextfield: UITextField!
    @IBOutlet weak var ChangeSegented: UISegmentedControl!
    let gradientLayer = CAGradientLayer()
    @IBOutlet weak var AddcolorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChangeSegented.selectedSegmentIndex=1 //預設為選擇文字
        Redsilder.isHidden=true
        GreenSilder.isHidden=true
        BlueSilder.isHidden=true
        AddcolorView.layer.addSublayer(gradientLayer)
        AddcolorView.layer.insertSublayer(gradientLayer, at: 0)
        
        Redairpods.alpha=0
        BlueAirpods.alpha=0
        GreenAirpods.alpha=0
       
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func Inputtext(_ sender: UITextField) {
        TextInputlabel.text=sender.text
    }
    
    
    @IBAction func Input(_ sender: UITextField) {
        TextInputlabel.text=sender.text
        
    }
    @IBAction func ChangeSegente(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex==0{
            
            InputTextfield.isHidden=true
            view.endEditing(false)
            Redsilder.isHidden=false
            GreenSilder.isHidden=false
            BlueSilder.isHidden=false
        }
        if sender.selectedSegmentIndex==1{
            InputTextfield.isHidden=false
            Redsilder.isHidden=true
            GreenSilder.isHidden=true
            BlueSilder.isHidden=true
            
        }
    }
    
    @IBAction func RedsilerChange(_ sender: UISlider) {
        
         
        BlueAirpods.alpha=CGFloat(BlueSilder.value)
        Redairpods.alpha=CGFloat(Redsilder.value)
        GreenAirpods.alpha=CGFloat(GreenSilder.value)
        
        TextInputlabel.textColor = UIColor(red: CGFloat(Redsilder.value), green: CGFloat(GreenSilder.value), blue: CGFloat(BlueSilder.value), alpha: 0.4)
        
        
        
//        Airpodsimage.image = Airpodsimage.image?.withRenderingMode(.alwaysTemplate)
//        Airpodsimage.tintColor = UIColor(red: CGFloat(Redsilder.value), green: CGFloat(GreenSilder.value), blue: CGFloat(BlueSilder.value), alpha: 1)
        
        
    }
    
    @IBAction func PressSP(_ sender: Any) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SpicalColorViewController
        
        destinationVC.NumberOfImage=Int.random(in: 0...2)
        
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
