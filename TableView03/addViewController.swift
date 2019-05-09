//
//  addViewController.swift
//  TableView03
//
//  Created by D7703_22 on 2019. 5. 9..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class addViewController: UIViewController {
    var testData: String?
    var imgData: String?
    var nameData: String?
    @IBOutlet weak var imageData: UIImageView!
    @IBOutlet weak var deData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(testData!)
        self.title = testData
        
        imageData.image = UIImage(named: imgData!)
        deData.text = nameData!
    }
    
}
