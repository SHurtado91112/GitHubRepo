//
//  GitCell.swift
//  GithubDemo
//
//  Created by Steven Hurtado on 2/15/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GitCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var gitUserLabel: UILabel!
    
    @IBOutlet weak var starCountLabel: UILabel!
    
    @IBOutlet weak var forkCountLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var userImgView: UIImageView!
    
    @IBOutlet weak var starImgView: UIImageView!
    @IBOutlet weak var forkImgView: UIImageView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        forkImgView.image = UIImage(named: "fork")?.withRenderingMode(.alwaysTemplate)
        
        starImgView.image = UIImage(named: "star")?.withRenderingMode(.alwaysTemplate)
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        gitUserLabel.preferredMaxLayoutWidth = gitUserLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        gitUserLabel.preferredMaxLayoutWidth = gitUserLabel.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
