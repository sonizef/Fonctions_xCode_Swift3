//
//  ListeTableViewCell.swift
//  inventaire
//
//  Created by Joris ZEFIRINI on 22/11/2016.
//  Copyright © 2016 SoniWeb. All rights reserved.
//

import UIKit

class ListeTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_item: UILabel!
    @IBOutlet weak var lbl_num: UILabel!
    
    @IBOutlet weak var btn_delete: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
    @IBAction func delItem(_ sender: Any) {
        print(btn_delete.tag)
        deleteItem(itemTag: btn_delete.tag)
        
    
    }
    

}
