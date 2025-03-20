import UIKit

class SparkModalTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.hidesBackButton = true
        constructSparkModalTabViewController()
    }
}

extension SparkModalTabViewController {
    func constructSparkModalTabViewController() {
        constructTabBar()
        constructViewControllers()
    }
    
    func constructTabBar() {
        tabBar.backgroundColor = UIColor.thirdCustom
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.layer.cornerRadius = 30
        tabBar.layer.masksToBounds = true
        
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 4)
        tabBar.layer.shadowOpacity = 0.3
        tabBar.layer.shadowRadius = 6
        
        if let items = tabBar.items {
            for item in items {
                item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            }
        }
    }
    
    func constructViewControllers() {
        let tableBookModalViewController = TableBookModalViewController()
        let bookItem = UITabBarItem(
            title: "Book",
            image: UIImage(resource: .sparkOne),
            tag: 0
        )
        tableBookModalViewController.tabBarItem = bookItem
        
        let workspModalViewController = WorkspModalViewController()
        let workshopItem = UITabBarItem(
            title: "Workshop",
            image: UIImage(resource: .sparkTwo),
            tag: 1
        )
         workspModalViewController.tabBarItem = workshopItem
        
        let ethicsModalViewController = EthicsModalViewController()
        let ethicsItem = UITabBarItem(
            title: "Ethics",
            image: UIImage(resource: .sparkThree),
            tag: 2
        )
         ethicsModalViewController.tabBarItem = ethicsItem
        
        let settingsModalViewController = SettingsModalViewController()
        let profileItem = UITabBarItem(
            title: "Profile",
            image: UIImage(resource: .sparkFour),
            tag: 3
        )
         settingsModalViewController.tabBarItem = profileItem
        
        self.viewControllers = [tableBookModalViewController, workspModalViewController, ethicsModalViewController, settingsModalViewController]
    }
}
