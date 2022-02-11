//
//  ContentViewController.swift
//  FirstAppGitHubIOS
//
//  Created by mbp15 on 9.02.22.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var presentText: UILabel!
    @IBOutlet weak var subPresentText: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var presentTextPage = ""
    var infoTextPage    = ""
    var currentPage  = 0 // Номер текущей страницы
    var numberOfPage = 0 // Общее количество страниц
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentText.text = presentTextPage
        subPresentText.text = infoTextPage
        pageControl.numberOfPages = numberOfPage
        pageControl.currentPage = currentPage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
