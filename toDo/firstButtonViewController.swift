//
//  firstButtonViewController.swift
//  toDo
//
//  Created by Chakane Shegog on 1/7/20.
//  Copyright © 2020 Chakane Shegog. All rights reserved.
//



// TODO
// Set labels inside collection view cell
// Mimic apple calender UI
// create the view to set ur own task
import UIKit

class firstButtonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // TODO
    // change this to years
    let data = ["2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030", "2031", "2032"]

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    

    
    
    // Table view protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        let cell = tableView.dequeueReusableCell(withIdentifier: "yearCell") as! yearCell
        cell.monthLabel.text = data[indexPath.row]
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Collection view at row \(collectionView.tag) selected index path \(indexPath)")
    }

    
    
    
    
    
    
    
    
  
    

}
