//
//  Materials5ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials5ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var materials5:[Material5] = []
    
    @IBOutlet weak var TableView5: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView5.dataSource = self
        TableView5.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials5.append(Material5(materialname5:"CODE:E-1",makername5:"ダミー株式会社",imagename5:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials5.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView5.dequeueReusableCell(withIdentifier: "Material5TableViewCell", for: indexPath) as? Material5TableViewCell else {
               fatalError("Dequeue failed: Material5TableViewCell.")
           }
        
        cell.material5ImageView.image = UIImage(named:materials5[indexPath.row].imagename5)
        cell.materialname5Label.text = materials5[indexPath.row]
            .materialname5
        cell.makername5Label.text = materials5[indexPath.row]
            .makername5
        
        return cell
        
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


