import UIKit
import FirebaseAuth

class AccountModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let firstView = UIView()
    private let firstTextField = UITextField()
    private let secondView = UIView()
    private let secondTextField = UITextField()
    private let thirdView = UIView()
    private let thirdTextField = UITextField()
    private let fourthView = UIView()
    private let fourthTextField = UITextField()
    private let firstButton = UIButton()
    private let bottomView = UIView()
    private let secondButton = UIButton()
    private let thirdButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructAccountModalViewController()
        
        thirdTextField.isSecureTextEntry = true
        fourthTextField.isSecureTextEntry = true
    }
    
}

extension AccountModalViewController {
    func constructAccountModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructFirstView()
        constructSecondView()
        constructThirdView()
        constructFourthView()
        constructFirstButton()
        
        constructBottomView()
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
    
    func constructFirstLabel() {
        firstLabel.text = "Create an account"
        firstLabel.textColor = .fourthCustom
        firstLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor),
            firstLabel.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 50)
        ])
    }
    
    func constructFirstView() {
        firstView.layer.cornerRadius = 12
        firstView.layer.borderWidth = 1
        firstView.layer.borderColor = UIColor.gray.cgColor
        firstView.backgroundColor = .white.withAlphaComponent(0.2)
        firstView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstView)
        
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 20),
            firstView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            firstView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            firstView.heightAnchor.constraint(equalToConstant: 40)
        ])
        constructFirstTextField()
    }
    
    func constructFirstTextField() {
        firstTextField.placeholder = "Name"
        firstTextField.textColor = .white
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        firstView.addSubview(firstTextField)
        
        NSLayoutConstraint.activate([
            firstTextField.topAnchor.constraint(equalTo: firstView.topAnchor),
            firstTextField.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 10),
            firstTextField.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -10),
            firstTextField.bottomAnchor.constraint(equalTo: firstView.bottomAnchor)
        ])
    }
    
    func constructSecondView() {
        secondView.layer.cornerRadius = 12
        secondView.layer.borderWidth = 1
        secondView.layer.borderColor = UIColor.gray.cgColor
        secondView.backgroundColor = .white.withAlphaComponent(0.2)
        secondView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 20),
            secondView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            secondView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            secondView.heightAnchor.constraint(equalToConstant: 40)
        ])
        constructSecondTextField()
    }
    
    func constructSecondTextField() {
        secondTextField.placeholder = "Email"
        secondTextField.textColor = .white
        secondTextField.autocapitalizationType = .none
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        secondView.addSubview(secondTextField)
        
        NSLayoutConstraint.activate([
            secondTextField.topAnchor.constraint(equalTo: secondView.topAnchor),
            secondTextField.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 10),
            secondTextField.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -10),
            secondTextField.bottomAnchor.constraint(equalTo: secondView.bottomAnchor)
        ])
    }
    
    func constructThirdView() {
        thirdView.layer.cornerRadius = 12
        thirdView.layer.borderWidth = 1
        thirdView.layer.borderColor = UIColor.gray.cgColor
        thirdView.backgroundColor = .white.withAlphaComponent(0.2)
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(thirdView)
        
        NSLayoutConstraint.activate([
            thirdView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 20),
            thirdView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            thirdView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            thirdView.heightAnchor.constraint(equalToConstant: 40)
        ])
        constructThirdTextField()
    }
    
    func constructThirdTextField() {
        thirdTextField.placeholder = "Password"
        thirdTextField.textColor = .white
        thirdTextField.translatesAutoresizingMaskIntoConstraints = false
        thirdView.addSubview(thirdTextField)
        
        NSLayoutConstraint.activate([
            thirdTextField.topAnchor.constraint(equalTo: thirdView.topAnchor),
            thirdTextField.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 10),
            thirdTextField.trailingAnchor.constraint(equalTo: thirdView.trailingAnchor, constant: -10),
            thirdTextField.bottomAnchor.constraint(equalTo: thirdView.bottomAnchor)
        ])
    }
    
    func constructFourthView() {
        fourthView.layer.cornerRadius = 12
        fourthView.layer.borderWidth = 1
        fourthView.layer.borderColor = UIColor.gray.cgColor
        fourthView.backgroundColor = .white.withAlphaComponent(0.2)
        fourthView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(fourthView)
        
        NSLayoutConstraint.activate([
            fourthView.topAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: 20),
            fourthView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            fourthView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            fourthView.heightAnchor.constraint(equalToConstant: 40)
        ])
        constructFourthTextField()
    }
    
    func constructFourthTextField() {
        fourthTextField.placeholder = "Confirm password"
        fourthTextField.textColor = .white
        fourthTextField.translatesAutoresizingMaskIntoConstraints = false
        fourthView.addSubview(fourthTextField)
        
        NSLayoutConstraint.activate([
            fourthTextField.topAnchor.constraint(equalTo: fourthView.topAnchor),
            fourthTextField.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 10),
            fourthTextField.trailingAnchor.constraint(equalTo: fourthView.trailingAnchor, constant: -10),
            fourthTextField.bottomAnchor.constraint(equalTo: fourthView.bottomAnchor)
        ])
    }
    
    func constructFirstButton() {
        firstButton.setBackgroundImage(UIImage(resource: .secondButton), for: .normal)
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstButton)
        
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: fourthView.bottomAnchor, constant: 20),
            firstButton.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            firstButton.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            firstButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        firstButton.addTarget(self, action: #selector(transitionFirstButton), for: .touchUpInside)
    }
}

extension AccountModalViewController {
    func constructBottomView() {
        bottomView.backgroundColor = .thirdCustom
        bottomView.layer.cornerRadius = 16
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomView)
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 250)
        ])
        constructSecondButton()
        constructThirdButton()
    }
    
    func constructSecondButton() {
        secondButton.setBackgroundImage(UIImage(resource: .firstButton), for:  .normal)
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(secondButton)
        
        NSLayoutConstraint.activate([
            secondButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 50),
            secondButton.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 10),
            secondButton.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -10),
            secondButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        secondButton.addTarget(self, action: #selector(transitionSecondButton), for: .touchUpInside)
    }
    
    func constructThirdButton() {
        thirdButton.setBackgroundImage(UIImage(resource: .thirdButton), for: .normal)
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(thirdButton)
        
        NSLayoutConstraint.activate([
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 20),
            thirdButton.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 45),
            thirdButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -45),
            thirdButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        thirdButton.addTarget(self, action: #selector(transitionThirdButton), for: .touchUpInside)
    }
}

extension AccountModalViewController {
    @objc func transitionFirstButton() {
        guard let userName = firstTextField.text, !userName.isEmpty,
              let email = secondTextField.text, !email.isEmpty,
              let password = thirdTextField.text, !password.isEmpty,
              let confirmPassword = fourthTextField.text, !confirmPassword.isEmpty else {
            showAlert(title: "Error", message: "Please fill in all fields.")
            return
        }
        
        guard password == confirmPassword else {
            showAlert(title: "Error", message: "Passwords do not match.")
            return
        }
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = view.center
        activityIndicator.color = .white
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
            DispatchQueue.main.async {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
            }
            
            if let error = error {
                self?.showAlert(title: "Registration error", message: error.localizedDescription)
                return
            }
            
            UserDefaults.standard.set(userName, forKey: "userName")
            UserDefaults.standard.synchronize()
            
            DispatchQueue.main.async {
                let oneOnboardingModalViewController = OneOnboardingModalViewController()
                self?.navigationController?.pushViewController(oneOnboardingModalViewController, animated: true)
            }
        }
    }
    
    @objc func transitionSecondButton() {
        let logInModalViewController = LogInModalViewController()
        navigationController?.pushViewController(logInModalViewController, animated: true)
    }
    
    @objc func transitionThirdButton() {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = view.center
        activityIndicator.color = .white
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        let userName = firstTextField.text?.isEmpty ?? true ? "Anonymous user" : firstTextField.text!
        UserDefaults.standard.set(userName, forKey: "userName")
        UserDefaults.standard.synchronize()
        
        Auth.auth().signInAnonymously { [weak self] authResult, error in
            DispatchQueue.main.async {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
            }
            
            if let error = error {
                self?.showAlert(title: "Anonymous authorization error", message: error.localizedDescription)
                return
            }
            
            DispatchQueue.main.async {
                let oneOnboardingModalViewController = OneOnboardingModalViewController()
                self?.navigationController?.pushViewController(oneOnboardingModalViewController, animated: true)
            }
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
