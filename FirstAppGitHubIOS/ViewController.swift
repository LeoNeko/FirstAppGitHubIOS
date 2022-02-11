//
//  ViewController.swift
//  FirstAppGitHubIOS
//
//  Created by mbp15 on 8.02.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func startPresentation() {
        
        let userDefault = UserDefaults.standard
        let presentationWasViewed = userDefault.bool(forKey: "presentationWasViewed")
        if presentationWasViewed == true {
            if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController{
                present(pageViewController, animated: true, completion: nil)
            }

        }
    }

}

