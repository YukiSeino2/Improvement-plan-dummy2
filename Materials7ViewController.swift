//
//  Materials7ViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Materials7ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var materials7:[Material7]=[]
    
    @IBOutlet weak var TableView7: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView7.dataSource = self
        TableView7.delegate = self
        
        loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        materials7.append(Material7(materialname7:"CODE:い-1",makername7:"ダミー株式会社",imagename7:"ダミー化学原料.jpeg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materials7.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = TableView7.dequeueReusableCell(withIdentifier: "Material7TableViewCell", for: indexPath) as? Material7TableViewCell else {
               fatalError("Dequeue failed: Material7TableViewCell.")
           }
        
        cell.material7ImageView.image = UIImage(named:materials7[indexPath.row].imagename7)
        cell.materialname7Label.text = materials7[indexPath.row]
            .materialname7
        cell.makername7Label.text = materials7[indexPath.row]
            .makername7
        
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


