//
//  ViewController.swift
//  Airpods
//
//  Created by guowei on 2020/7/23.
//  Copyright © 2020 guowei. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var textview: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image = UIImage(named: "raiboo.jpg")!
        Label.textColor = UIColor.init(patternImage: image)
        
    }


}

