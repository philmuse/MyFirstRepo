//
//  WorkoutCoursesTVC.swift
//  SatoriChallenge
//
//  Created by Phil Muse on 11/25/16.
//
//

import UIKit

class WorkoutCourseListTVC: UITableViewCell {

    @IBOutlet weak var courseInstanceLabel: UILabel!
    public var courseId: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
