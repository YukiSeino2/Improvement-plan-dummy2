//
//  MaterialsViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class MaterialsViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
     
    
    var materials1: [Material1] = []
    
    @IBOutlet weak var TableView1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView1.dataSource = self
        TableView1.delegate = self
        
        loadData()
        
    }
    
    func loadData() {
       materials1.append(Material1(materialname1: "CODEA-1", makername1: "ダミー株式会社", imageName1: "ダミー化学原料.jpeg"))
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return materials1.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            guard let cell = TableView1.dequeueReusableCell(withIdentifier: "Material1TableViewCell", for: indexPath) as? Material1TableViewCell else {
                    fatalError("Dequeue failed: Material1TableViewCell.")
                }
                
                cell.materialName1Label.text = materials1[indexPath.row].materialname1
            cell.materialMakerName1Label.text = materials1 [indexPath.row].makername1
                cell.material1ImageView.image = UIImage(named: materials1[indexPath.row].imageName1)

                return cell
        }
        
        
        

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


