//
//  Materials12ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials12ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var materials12:[Material12]=[]
    
    @IBOutlet weak var TableView12: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView12.dataSource = self
        TableView12.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials12.append(Material12(materialname12:"CODE:2-1",makername12:"ダミー株式会社",imagename12:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials12.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView12.dequeueReusableCell(withIdentifier: "Material12TableViewCell", for: indexPath) as? Material12TableViewCell else {
               fatalError("Dequeue failed: Material12TableViewCell.")
           }
        
        cell.material12ImageView.image = UIImage(named:materials12[indexPath.row].imagename12)
        cell.materialname12Label.text = materials12[indexPath.row]
            .materialname12
        cell.makername12Label.text = materials12[indexPath.row]
            .makername12
        
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


