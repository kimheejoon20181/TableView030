//
//  ViewController.swift
//  TableView03
//
//  Created by D7703_22 on 2019. 4. 30..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController,UITableViewDataSource{
    
    @IBOutlet weak var myTableView: UITableView!
    
    var animals = ["Cat","Dog","Pig","Brid","Whale","Cow"]
    var detallAnimals = ["고양이","개","돼지","새","고래","소"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let myRow = indexPath.row
        
        myCell.textLabel?.text = animals[myRow]
        myCell.detailTextLabel?.text = detallAnimals[myRow]
        
        myCell.imageView?.image = UIImage(named: animals[myRow])
        
        return myCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goadd"{
            let addVC = segue.destination as! addViewController
            //addVC.testData = self.title
            addVC.testData = animals[0]
            addVC.imgData = "Cat"
            addVC.nameData = detallAnimals[0]
        }
        else if  segue.identifier == "godetail"{
            let tailVC = segue.destination as! DetailViewController
            
            
        }
        else{
            print("segue error")
        }
        
    }
    


}

