//
//  ViewController.swift
//  cityMarks
//
//  Created by Dorukhan Demir on 21.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedName = ""
    var selectedImage = UIImage()
    
    
    
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        selectedName = imageName[indexPath.row]
        selectedImage = imageArray[indexPath.row]
        
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailView" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.choosenImage = selectedImage
            destinationVC.choosenName = selectedName
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.imageName.remove(at: indexPath.row)
            self.imageArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.bottom)
        }
    }


}

