//
//  Materials10ViewController.swift
//  Improvement plan dummy
//
// 
//

import UIKit

class Materials10ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    var materials10:[Material10]=[]
    
    @IBOutlet weak var TableView10: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView10.dataSource = self
        TableView10.delegate = self
        
        loadData()

        
        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials10.append(Material10(materialname10:"CODE:お-1",makername10:"ダミー株式会社",imagename10:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materials10.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView10.dequeueReusableCell(withIdentifier: "Material10TableViewCell", for: indexPath) as? Material10TableViewCell else {
               fatalError("Dequeue failed: Material10TableViewCell.")
           }
        
        cell.material10ImageView.image = UIImage(named:materials10[indexPath.row].imagename10)
        cell.materialname10Label.text = materials10[indexPath.row]
            .materialname10
        cell.makername10Label.text = materials10[indexPath.row]
            .makername10
        
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


