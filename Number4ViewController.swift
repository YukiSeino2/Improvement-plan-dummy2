//
//  Number4ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Number4ViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.loadGif(name: "meter")
        
        let sampleImage = UIImage(named:"return2.jpeg")
        imageview.image = sampleImage

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
