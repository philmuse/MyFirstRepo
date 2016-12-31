//
//  TabBarCollectionVC.swift
//  SatoriChallenge
//
//  Created by Phil Muse on 11/21/16.
//
//

import UIKit

class TabBarCollectionVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var mainVCs: [UIViewController] = [UIViewController]()
        
        if let ctlrs = self.viewControllers {
            
            for (_, vc) in ctlrs.enumerated() {
                if let tabVC = vc as? TabMainPageVC {
                    let sb = UIStoryboard(name: tabVC.storyboardName! as String, bundle: nil)
                    let tvc = sb.instantiateInitialViewController()! as UIViewController
                    mainVCs.append(tvc)
                } else {
                    mainVCs.append(vc)
                }
            }
            self.setViewControllers(mainVCs, animated: false)
        }

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
