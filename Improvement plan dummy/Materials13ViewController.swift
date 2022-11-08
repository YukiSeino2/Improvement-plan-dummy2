//
//  Materials13ViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class Materials13ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var materials13:[Material13]=[]
  
    

    @IBOutlet weak var TableView13: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView13.dataSource = self
        TableView13.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials13.append(Material13(materialname13:"CODE:3-1",makername13:"ダミー株式会社",imagename13:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materials13.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView13.dequeueReusableCell(withIdentifier: "Material13TableViewCell", for: indexPath) as? Material13TableViewCell else {
               fatalError("Dequeue failed: Material13TableViewCell.")
           }
        
        cell.material13ImageView.image = UIImage(named:materials13[indexPath.row].imagename13)
        cell.materialname13Label.text = materials13[indexPath.row]
            .materialname13
        cell.makername13Label.text = materials13[indexPath.row]
            .makername13
        
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


