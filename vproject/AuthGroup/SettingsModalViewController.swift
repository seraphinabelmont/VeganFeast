import UIKit
import FirebaseAuth

class SettingsModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstImageSettings = UIImageView()
    private let firstLabel = UILabel()
    private let secondLabel = UILabel()
    private let thirdLabel = UILabel()
    private let fourthButton = UIButton()
    private let fifthButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        constructSettingsModalViewController()
        loadUserData()
    }
    
    private func loadUserData() {
        if let userName = UserDefaults.standard.string(forKey: "userName") {
            firstLabel.text = userName
        } else {
            firstLabel.text = "User"
        }
        
        if let user = Auth.auth().currentUser {
            if let email = user.email {
                thirdLabel.text = email
            } else {
                thirdLabel.text = "Anonymous user"
                secondLabel.text = "Status"
            }
        } else {
            thirdLabel.text = "Not authorized"
        }
    }
}

extension SettingsModalViewController {
    func constructSettingsModalViewController() {
        constructCenterCustomView()
        constructFirstImageSettings()
        constructFirstLabel()
        constructSecondLabel()
        constructThirdLabel()
        constructFourthButton()
        constructFifthButton()
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
    
    func constructFirstImageSettings() {
        firstImageSettings.image = UIImage(resource: .firstImageSettings)
        firstImageSettings.contentMode = .scaleAspectFill
        firstImageSettings.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstImageSettings)
        
        NSLayoutConstraint.activate([
            firstImageSettings.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 50),
            firstImageSettings.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor),
            firstImageSettings.heightAnchor.constraint(equalToConstant: 200),
            firstImageSettings.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func constructFirstLabel() {
        firstLabel.text = "Loading..."
        firstLabel.textColor = .white
        firstLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalTo: firstImageSettings.bottomAnchor, constant: 20),
            firstLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor)
        ])
    }
    
    func constructSecondLabel() {
        secondLabel.text = "Email"
        secondLabel.textColor = .gray
        secondLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(secondLabel)
        
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 10),
            secondLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor)
        ])
    }
    
    func constructThirdLabel() {
        thirdLabel.text = "Loading..."
        thirdLabel.textColor = .white
        thirdLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(thirdLabel)
        
        NSLayoutConstraint.activate([
            thirdLabel.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 10),
            thirdLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor)
        ])
    }
    
    func constructFourthButton() {
        fourthButton.setBackgroundImage(UIImage(resource: .fourthButton), for: .normal)
        fourthButton.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(fourthButton)
        
        NSLayoutConstraint.activate([
            fourthButton.topAnchor.constraint(equalTo: thirdLabel.bottomAnchor, constant: 20),
            fourthButton.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            fourthButton.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            fourthButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        fourthButton.addTarget(self, action: #selector(transitionFourthButton), for: .touchUpInside)
    }
    
    func constructFifthButton() {
        fifthButton.setBackgroundImage(UIImage(resource: .fifthButton), for: .normal)
        fifthButton.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(fifthButton)
        
        NSLayoutConstraint.activate([
            fifthButton.topAnchor.constraint(equalTo: fourthButton.bottomAnchor, constant: 10),
            fifthButton.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            fifthButton.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            fifthButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        fifthButton.addTarget(self, action: #selector(transitionFifthButton), for: .touchUpInside)
    }
}

extension SettingsModalViewController {
    @objc func transitionFourthButton() {
        let alert = UIAlertController(title: "Log Out", message: "Are you sure you want to log out?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        let confirmAction = UIAlertAction(title: "Log Out", style: .destructive) { [weak self] _ in
            do {
                try Auth.auth().signOut()
                
                UserDefaults.standard.removeObject(forKey: "userName")
                UserDefaults.standard.synchronize()
                
                let accountVC = AccountModalViewController()
                let navController = UINavigationController(rootViewController: accountVC)
                navController.modalPresentationStyle = .fullScreen
                self?.present(navController, animated: true)
            } catch {
                self?.showAlert(title: "Error", message: "Failed to log out: \(error.localizedDescription)")
            }
        }
        
        alert.addAction(cancelAction)
        alert.addAction(confirmAction)
        present(alert, animated: true)
    }
    
    @objc func transitionFifthButton() {
        let alert = UIAlertController(title: "Delete Account", message: "Are you sure you want to delete your account? This action cannot be undone.", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        let confirmAction = UIAlertAction(title: "Delete", style: .destructive) { [weak self] _ in
            if let user = Auth.auth().currentUser {
                let activityIndicator = UIActivityIndicatorView(style: .large)
                activityIndicator.center = self?.view.center ?? .zero
                activityIndicator.color = .white
                self?.view.addSubview(activityIndicator)
                activityIndicator.startAnimating()
                
                user.delete { error in
                    DispatchQueue.main.async {
                        activityIndicator.stopAnimating()
                        activityIndicator.removeFromSuperview()
                    }
                    
                    if let error = error {
                        self?.showAlert(title: "Error", message: "Failed to delete account: \(error.localizedDescription)")
                        return
                    }
                    
                    UserDefaults.standard.removeObject(forKey: "userName")
                    UserDefaults.standard.synchronize()
                    
                    let accountVC = AccountModalViewController()
                    let navController = UINavigationController(rootViewController: accountVC)
                    navController.modalPresentationStyle = .fullScreen
                    self?.present(navController, animated: true)
                }
            } else {
                self?.showAlert(title: "Error", message: "User not logged in")
            }
        }
        
        alert.addAction(cancelAction)
        alert.addAction(confirmAction)
        present(alert, animated: true)
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
