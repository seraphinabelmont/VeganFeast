import UIKit
import FirebaseAuth

class LogInModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let firstView = UIView()
    private let firstTextField = UITextField()
    private let secondView = UIView()
    private let secondTextField = UITextField()
    private let firstButton = UIButton()
    private let bottomView = UIView()
    private let secondButton = UIButton()
    private let thirdButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructLogInModalViewController()
    }
}

extension LogInModalViewController {
    func constructLogInModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructFirstView()
        constructSecondView()
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
        firstLabel.text = "Log in"
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
        firstTextField.placeholder = "Email"
        firstTextField.textColor = .white
        secondTextField.autocapitalizationType = .none
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
        secondView.backgroundColor = .white.withAlphaComponent(0.2)
        secondView.layer.borderColor = UIColor.gray.cgColor
        secondView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 16),
            secondView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            secondView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            secondView.heightAnchor.constraint(equalToConstant: 40)
        ])
        constructSecondTextField()
    }
    
    func constructSecondTextField() {
        secondTextField.placeholder = "Password"
        secondTextField.textColor = .white
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        secondView.addSubview(secondTextField)
        
        NSLayoutConstraint.activate([
            secondTextField.topAnchor.constraint(equalTo: secondView.topAnchor),
            secondTextField.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 10),
            secondTextField.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -10),
            secondTextField.bottomAnchor.constraint(equalTo: secondView.bottomAnchor)
        ])
    }
    
    func constructFirstButton() {
        firstButton.setBackgroundImage(UIImage(resource: .firstButton), for: .normal)
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstButton)
        
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 20),
            firstButton.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 20),
            firstButton.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -20),
            firstButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        firstButton.addTarget(self, action: #selector(transitionFirstButton), for: .touchUpInside)
    }
}

extension LogInModalViewController {
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
        secondButton.setBackgroundImage(UIImage(resource: .secondButton), for:  .normal)
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

extension LogInModalViewController {
    @objc func transitionFirstButton() {
        guard let email = firstTextField.text, !email.isEmpty,
              let password = secondTextField.text, !password.isEmpty else {
            showAlert(title: "Error", message: "Please enter your email and password.")
            return
        }
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = view.center
        activityIndicator.color = .white
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            DispatchQueue.main.async {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
            }
            
            if let error = error {
                self?.showAlert(title: "Authorization error", message: error.localizedDescription)
                return
            }
            
            DispatchQueue.main.async {
                let oneOnboardingModalViewController = OneOnboardingModalViewController()
                self?.navigationController?.pushViewController(oneOnboardingModalViewController, animated: true)
            }
        }
    }
    
    @objc func transitionSecondButton() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func transitionThirdButton() {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = view.center
        activityIndicator.color = .white
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
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
