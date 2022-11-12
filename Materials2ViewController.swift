//
//  Materials2ViewController.swift
//  Improvement plan dummy
//

import UIKit

class Materials2ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var materials2:[Material2] = []
    
    @IBOutlet weak var TableView2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView2.dataSource = self
        TableView2.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials2.append(Material2(materialname2:"CODE:B-1",makername2:"ダミー株式会社",imagename2:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView2.dequeueReusableCell(withIdentifier: "Material2TableViewCell", for: indexPath) as? Material2TableViewCell else {
               fatalError("Dequeue failed: Material2TableViewCell.")
           }
           
           cell.materialname2Label.text = materials2[indexPath.row].materialname2
           cell.makername2Label.text = materials2[indexPath.row].makername2
           cell.material2ImageView.image = UIImage(named: materials2[indexPath.row].imagename2)

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
