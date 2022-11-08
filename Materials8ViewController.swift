//
//  Material8ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials8ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var materials8:[Material8]=[]
    
    @IBOutlet weak var TableView8: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView8.dataSource = self
        TableView8.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials8.append(Material8(materialname8:"CODE:う-1",makername8:"ダミー株式会社",imagename8:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materials8.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView8.dequeueReusableCell(withIdentifier: "Material8TableViewCell", for: indexPath) as? Material8TableViewCell else {
               fatalError("Dequeue failed: Material8TableViewCell.")
           }
        
        cell.material8ImageView.image = UIImage(named:materials8[indexPath.row].imagename8)
        cell.materialname8Label.text = materials8[indexPath.row]
            .materialname8
        cell.makername8Label.text = materials8[indexPath.row]
            .makername8
        
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


