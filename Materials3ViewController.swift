//
//  Material3ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials3ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var materials3:[Material3]=[]
    
    

    @IBOutlet weak var TableView3: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView3.dataSource = self
        TableView3.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials3.append(Material3(materialname3:"CODE:C-1",makername3:"ダミー株式会社",imagename3:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = TableView3.dequeueReusableCell(withIdentifier: "Material3TableViewCell", for: indexPath) as? Material3TableViewCell else {
               fatalError("Dequeue failed: Material3TableViewCell.")
           }
        
        cell.material3ImageView.image = UIImage(named:materials3[indexPath.row].imagename3)
        cell.materialname3Label.text = materials3[indexPath.row]
            .materialname3
        cell.makername3Label.text = materials3[indexPath.row]
            .makername3
        
        return cell
        
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
