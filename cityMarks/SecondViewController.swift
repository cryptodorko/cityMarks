//
//  SecondViewController.swift
//  cityMarks
//
//  Created by Dorukhan Demir on 27.09.2022.
//

import UIKit





class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var choosenName = ""
    var choosenImage = UIImage()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = choosenName
        imageView.image = choosenImage

        // Do any additional setup after loading the view.
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
