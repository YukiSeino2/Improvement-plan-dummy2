//
//  Materials11ViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class Materials11ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var materials11:[Material11]=[]
    
    @IBOutlet weak var TableView11: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView11.dataSource = self
        TableView11.delegate = self

        loadData()
        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials11.append(Material11(materialname11:"CODE:1-1",makername11:"ダミー株式会社",imagename11:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials11.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView11.dequeueReusableCell(withIdentifier: "Material11TableViewCell", for: indexPath) as? Material11TableViewCell else {
               fatalError("Dequeue failed: Material11TableViewCell.")
           }
        
        cell.material11ImageView.image = UIImage(named:materials11[indexPath.row].imagename11)
        cell.materialname11Label.text = materials11[indexPath.row]
            .materialname11
        cell.makername11Label.text = materials11[indexPath.row]
            .makername11
        
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


