//
//  WorkoutCourseVC.swift
//  SatoriChallenge
//
//  Created by Phil Muse on 11/26/16.
//
//

import UIKit

class WorkoutCourseVC: UIViewController {
    private var course: Int = 0
    
    public var courseId: Int {
        get { return course }
        set (val){
            course = val
            self.courseIdLabel?.text = String(format: "Course:%i", course)
        }
    }

    @IBOutlet weak var courseIdLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.courseIdLabel.text = String(format: "Course:%i", courseId)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
