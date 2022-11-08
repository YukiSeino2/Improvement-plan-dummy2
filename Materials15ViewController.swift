//
//  Materials15ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials15ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var materials15:[Material15]=[]
    
    
    @IBOutlet weak var TableView15: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView15.dataSource = self
        TableView15.delegate = self
        
        loadData()
        

        // Do any additional setup after loading the view.
    }
   
    func loadData(){
        materials15.append(Material15(materialname15:"CODE:5-1",makername15:"ダミー株式会社",imagename15:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials15.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView15.dequeueReusableCell(withIdentifier: "Material15TableViewCell", for: indexPath) as? Material15TableViewCell else {
               fatalError("Dequeue failed: Material15TableViewCell.")
           }
        
        cell.material15ImageView.image = UIImage(named:materials15[indexPath.row].imagename15)
        cell.materialname15Label.text = materials15[indexPath.row]
            .materialname15
        cell.makername15Label.text = materials15[indexPath.row]
            .makername15
        
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


