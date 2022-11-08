//
//  Material1TableViewCell.swift
//  Improvement plan dummy
//
//  
//

import UIKit

class Material1TableViewCell: UITableViewCell {

    
   @IBOutlet weak var materialName1Label: UILabel!
   
   @IBOutlet weak var materialMakerName1Label: UILabel!
   
   @IBOutlet weak var material1ImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
