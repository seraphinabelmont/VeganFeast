import UIKit
import FirebaseAuth

class WelcomeScreenViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let welcomeLabel = UILabel()
    private let secondLabel = UILabel()
    private let firstGroupItem = UIImageView()
    private let secondGroupItem = UIImageView()
    private let thirdGroupItem = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        constructWelcomeScreenViewController()
        animateImagesSequentially()
    }
}

extension WelcomeScreenViewController {
    func constructWelcomeScreenViewController() {
        constructCenterCustomView()
        constructWelcomeLabel()
        constructSecondLabel()
        constructFirstGroupItem()
        constructSecondGroupItem()
        constructThirdGroupItem()
    }
    
    func constructCenterCustomView() {
        centerCustomView.backgroundColor = .secondCustom
        centerCustomView.layer.borderColor = UIColor.thirdCustom.cgColor
        centerCustomView.layer.borderWidth = 1
        centerCustomView.layer.cornerRadius = 16
        centerCustomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(centerCustomView)
        
        NSLayoutConstraint.activate([
            centerCustomView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            centerCustomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            centerCustomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            centerCustomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
    }
    
    func constructWelcomeLabel() {
        welcomeLabel.text = "Welcome"
        welcomeLabel.textColor = .fourthCustom
        welcomeLabel.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 100),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func constructSecondLabel() {
        secondLabel.text = "to our app"
        secondLabel.textColor = .fifthCustom
        secondLabel.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(secondLabel)
        
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 3),
            secondLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor)
        ])
    }
    
    func constructFirstGroupItem() {
        firstGroupItem.image = UIImage(resource: .firstGroupItem)
        firstGroupItem.contentMode = .scaleAspectFill
        firstGroupItem.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstGroupItem)
        
        NSLayoutConstraint.activate([
            firstGroupItem.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 120),
            firstGroupItem.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            firstGroupItem.heightAnchor.constraint(equalToConstant: 80),
            firstGroupItem.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    func constructSecondGroupItem() {
        secondGroupItem.image = UIImage(resource: .secondGroupItem)
        secondGroupItem.contentMode = .scaleAspectFill
        secondGroupItem.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondGroupItem)
        
        NSLayoutConstraint.activate([
            secondGroupItem.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 120),
            secondGroupItem.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondGroupItem.heightAnchor.constraint(equalToConstant: 100),
            secondGroupItem.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    func constructThirdGroupItem() {
        thirdGroupItem.image = UIImage(resource: .thirdGroupItem)
        thirdGroupItem.contentMode = .scaleAspectFill
        thirdGroupItem.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdGroupItem)
        
        NSLayoutConstraint.activate([
            thirdGroupItem.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 120),
            thirdGroupItem.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            thirdGroupItem.heightAnchor.constraint(equalToConstant: 80),
            thirdGroupItem.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
}

extension WelcomeScreenViewController {
    func animateImagesSequentially() {
        let duration: TimeInterval = 1.0
        let offset: CGFloat = 30
        
        UIView.animate(withDuration: duration, delay: 0, options: [.curveEaseInOut], animations: {
            self.firstGroupItem.transform = CGAffineTransform(translationX: 0, y: offset)
        }) { _ in
            UIView.animate(withDuration: duration, animations: {
                self.firstGroupItem.transform = CGAffineTransform(translationX: 0, y: -offset)
            }) { _ in
                UIView.animate(withDuration: duration, animations: {
                    self.firstGroupItem.transform = .identity
                })
            }
        }
        
        UIView.animate(withDuration: duration, delay: 1.0, options: [.curveEaseInOut], animations: {
            self.secondGroupItem.transform = CGAffineTransform(translationX: 0, y: offset)
        }) { _ in
            UIView.animate(withDuration: duration, animations: {
                self.secondGroupItem.transform = CGAffineTransform(translationX: 0, y: -offset)
            }) { _ in
                UIView.animate(withDuration: duration, animations: {
                    self.secondGroupItem.transform = .identity
                })
            }
        }
        
        UIView.animate(withDuration: duration, delay: 2.0, options: [.curveEaseInOut], animations: {
            self.thirdGroupItem.transform = CGAffineTransform(translationX: 0, y: offset)
        }) { _ in
            UIView.animate(withDuration: duration, animations: {
                self.thirdGroupItem.transform = CGAffineTransform(translationX: 0, y: -offset)
            }) { _ in
                UIView.animate(withDuration: duration, animations: {
                    self.thirdGroupItem.transform = .identity
                }) { _ in
                    self.transition()
                }
            }
        }
    }
}

extension WelcomeScreenViewController {
    func transition() {
        if let currentUser = Auth.auth().currentUser {
            let oneOnboardingModalViewController = OneOnboardingModalViewController()
            let navController = UINavigationController(rootViewController: oneOnboardingModalViewController)
            navController.modalPresentationStyle = .fullScreen
            self.present(navController, animated: true)
        } else {
            let accountVC = AccountModalViewController()
            let navController = UINavigationController(rootViewController: accountVC)
            navController.modalPresentationStyle = .fullScreen
            self.present(navController, animated: true)
        }
    }
}
