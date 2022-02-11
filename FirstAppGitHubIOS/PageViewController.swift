//
//  PageViewController.swift
//  FirstAppGitHubIOS
//
//  Created by mbp15 on 9.02.22.
//

import UIKit

class PageViewController: UIPageViewController {

    let presentScreenContent = [
        "Первая страница презентации",
        "Вторая страница презентации",
        "Третья страница презентации",
        "Последняя страница презентации",
        ""
    ]
    
    let subScreenContent = [
        "Описалово 1",
        "Описалово 2",
        "Описалово 3",
        "Последнее описалово",
        ""
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self

        if let contentViewController = ShowViewControllerAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func ShowViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else {return nil}
        guard index < presentScreenContent.count else {
            let userDefaults = UserDefaults.standard
            userDefaults.set(true, forKey: "presentationWasViewed")
            dismiss(animated: true, completion: nil)
            return nil
        }
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else {return nil}
        
        contentViewController.presentTextPage = presentScreenContent[index]
        contentViewController.infoTextPage = subScreenContent[index]
        contentViewController.numberOfPage = presentScreenContent.count
        contentViewController.currentPage = index
        
        
        return contentViewController
        
    }
    
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        
        return ShowViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        
        return ShowViewControllerAtIndex(pageNumber)
    }
    
    
}
