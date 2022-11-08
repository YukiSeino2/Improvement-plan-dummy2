//
//  Materials14ViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class Materials14ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var materials14:[Material14]=[]
  
    

    @IBOutlet weak var TableView14: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView14.dataSource = self
        TableView14.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials14.append(Material14(materialname14:"CODE:4-1",makername14:"ダミー株式会社",imagename14:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materials14.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView14.dequeueReusableCell(withIdentifier: "Material14TableViewCell", for: indexPath) as? Material14TableViewCell else {
               fatalError("Dequeue failed: Material14TableViewCell.")
           }
        
        cell.material14ImageView.image = UIImage(named:materials14[indexPath.row].imagename14)
        cell.materialname14Label.text = materials14[indexPath.row]
            .materialname14
        cell.makername14Label.text = materials14[indexPath.row]
            .makername14
        
        return cell
        
    }
    }


