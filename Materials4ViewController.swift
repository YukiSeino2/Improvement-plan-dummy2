//
//  Materials4ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials4ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var materials4:[Material4]=[]
    
    
    
    @IBOutlet weak var TableView4: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView4.dataSource = self
        TableView4.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials4.append(Material4(materialname4:"CODE:D-1",makername4:"ダミー株式会社",imagename4:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials4.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView4.dequeueReusableCell(withIdentifier: "Material4TableViewCell", for: indexPath) as? Material4TableViewCell else {
               fatalError("Dequeue failed: Material4TableViewCell.")
           }
        
        cell.material4ImageView.image = UIImage(named:materials4[indexPath.row].imagename4)
        cell.materialname4Label.text = materials4[indexPath.row]
            .materialname4
        cell.makername4Label.text = materials4[indexPath.row]
            .makername4
        
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


