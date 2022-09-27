//
//  ViewController.swift
//  cityMarks
//
//  Created by Dorukhan Demir on 21.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var imageArray = [UIImage]()
    var imageName = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray.append(UIImage(named: "map")!)
        imageArray.append(UIImage(named: "northlight")!)
        imageArray.append(UIImage(named: "stockholm")!)
        
        imageName.append("map")
        imageName.append("northlight")
        imageName.append("stockholm")
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        print("hello cities")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = imageName[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }


}

