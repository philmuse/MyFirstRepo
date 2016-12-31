//
//  WorkoutCoursesVC.swift
//  SatoriChallenge
//
//  Created by Phil Muse on 11/25/16.
//
//

import UIKit

class WorkoutCourseListVC: UIViewController {
    
    var courses: [Int:String] = [1:"Week One", 2:"Week Two", 3:"Week Three", 4:"Week Four", 5:"Week Five", 6:"Week Six", 7:"Week Seven", 8:"Week Eight", 9:"Week Nine", 10:"Week Ten"]

    @IBOutlet weak var coursesTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        coursesTV.register(nib, forHeaderFooterViewReuseIdentifier: "CourseHeader")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as UIViewController
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController!
        }
        if let vc = destination as? WorkoutCourseVC {
        
            // check sender, get data.
            if let cell = sender as? WorkoutCourseListTVC {
                vc.courseId = cell.courseId
            }
        }
    }

    
    // MARK: - UITableViewDelegate

}

extension WorkoutCourseListVC: UITableViewDataSource, UITableViewDelegate
{
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: WorkoutCourseListTVC = tableView.dequeueReusableCell(withIdentifier: "CourseInstance") as! WorkoutCourseListTVC
        cell.courseInstanceLabel.text = courses[indexPath.row+1]
        cell.courseId = indexPath.row+1
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Courses"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CourseHeader")
//        
//        return view
//    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 0 {
            return courses.count
        } else {
            return 0
        }
    }
    
}

