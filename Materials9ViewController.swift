//
//  Materials9ViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class Materials9ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    var materials9:[Material9]=[]
    
    @IBOutlet weak var TableView9: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView9.dataSource = self
        TableView9.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials9.append(Material9(materialname9:"CODE:え-1",makername9:"ダミー株式会社",imagename9:"ダミー化学原料.jpeg"))
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materials9.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView9.dequeueReusableCell(withIdentifier: "Material9TableViewCell", for: indexPath) as? Material9TableViewCell else {
               fatalError("Dequeue failed: Material9TableViewCell.")
           }
        
        cell.material9ImageView.image = UIImage(named:materials9[indexPath.row].imagename9)
        cell.materialname9Label.text = materials9[indexPath.row]
            .materialname9
        cell.makername9Label.text = materials9[indexPath.row]
            .makername9
        
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


