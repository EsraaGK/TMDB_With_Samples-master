//
//  ActorListCell.swift
//  TMDB
//
//  Created by EsraaGK on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit
import SDWebImage

class ActorListCell: UITableViewCell {

    @IBOutlet private weak var ActorListImage: UIImageView!
    @IBOutlet private weak var ActorListLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(personOBJ :Person){
       
        ActorListLable.text = personOBJ.name! //as! String
        //https://image.tmdb.org/t/p/w500
        let path = "https://image.tmdb.org/t/p/w500"+personOBJ.profilePath!
        ActorListImage.sd_setImage(with: URL(string:path), placeholderImage: UIImage(named: "Reverb"))
    }
    
}
