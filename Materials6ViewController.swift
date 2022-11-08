//
//  Materials6ViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class Materials6ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var materials6:[Material6] = []
    
    @IBOutlet weak var TableView6: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView6.dataSource = self
        TableView6.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials6.append(Material6(materialname6:"CODE:あ-1",makername6:"ダミー株式会社",imagename6:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials6.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView6.dequeueReusableCell(withIdentifier: "Material6TableViewCell", for: indexPath) as? Material6TableViewCell else {
               fatalError("Dequeue failed: Material6TableViewCell.")
           }
        
        cell.material6ImageView.image = UIImage(named:materials6[indexPath.row].imagename6)
        cell.materialname6Label.text = materials6[indexPath.row]
            .materialname6
        cell.makername6Label.text = materials6[indexPath.row]
            .makername6
        
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


