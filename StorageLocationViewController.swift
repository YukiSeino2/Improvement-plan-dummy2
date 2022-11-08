//
//  StorageLocationViewController.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class StorageLocationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
 var storagelocation1:[StorageLocation1]=[]
   
    

    @IBOutlet weak var StorageLocationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StorageLocationTableView.dataSource = self
        StorageLocationTableView.delegate = self
        
        
        
    loadData()

        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        storagelocation1.append(StorageLocation1(storagelocation1:"A3コピー用紙→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"A4コピー用紙→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"B5コピー用紙→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"A6コピー用紙→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"カッター替刃→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"紙ヤスリ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"キリ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ギア油→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ギアプーラー→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"クランプ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"クリアボックス→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"軍手→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"結束バンド→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ゴム手袋→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"軍手→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ゴム手袋→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"指矩(さしがね)→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"軸受油→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ジャッキ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"シリンダー油→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"スケール→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"スパナ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"スポイトA→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"スポイトB→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"スポンジ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"石鹸→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"洗剤→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ソケットレンチ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"雑巾→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ダイナモ油→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"タービン油→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"チェーン→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"電池→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"トイレットペーパー→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ドライバー→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"トルクレンチ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ニッパー→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"鋸(のこぎり)→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"鑿(のみ)→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"パイプレンチ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"鋏(はさみ)→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"パレット→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ハンガー→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"はんだごて→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ハンマー→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"バール→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ビス→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ピンセット→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"布巾→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"付箋→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ベロ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ペンチ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ペーパータオル→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ホチキス→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ポリ缶→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ポリ瓶→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ポリ袋→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ポンプ(大)→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ポンプ(小)→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ホース類→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"ボールペン→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"マシン油→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"マスク→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"めがねレンチ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"モンキーレンチ→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"マジックペン→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"六角→A棟BF 棚番C-D"))
        storagelocation1.append(StorageLocation1(storagelocation1:"輪ゴム→A棟BF 棚番C-D"))
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storagelocation1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = StorageLocationTableView.dequeueReusableCell(withIdentifier: "StorageLocationTableViewCell", for: indexPath) as? StorageLocationTableViewCell else {
               fatalError("Dequeue failed: StorageLocationTableViewCell.")
           }
        
        cell.StorageLocation1Label.text = storagelocation1[indexPath.row]
            .storagelocation1
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


