import UIKit

class SushiFormModalViewController: UIViewController, UITextFieldDelegate {
    
    private let centerCustomView = UIView()
    private let xmark = UIButton()
    private let grillLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let firstLabel = UILabel()
    private let firstView = UIView()
    private let firstTextField = UITextField()
    private let secondView = UIView()
    private let secondTextField = UITextField()
    private let seventhButton = UIButton()
    
    private let successPopupView = UIView()
    private let successLabel = UILabel()
    private let okButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructBookingFormModalViewController()
        
        firstTextField.delegate = self
        secondTextField.delegate = self
    }
}

extension SushiFormModalViewController {
    func constructBookingFormModalViewController() {
        constructCenterCustomView()
        constructXmark()
        constructGrillLabel()
        constructDescriptionLabel()
        constructFirstLabel()
        cunstructFirstView()
        constructSecondView()
        constructSeventhButton()
        constructSuccessPopup()
    }
    
    func constructCenterCustomView() {
        centerCustomView.backgroundColor = .secondCustom
        centerCustomView.layer.cornerRadius = 16
        centerCustomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(centerCustomView)
        
        NSLayoutConstraint.activate([
            centerCustomView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerCustomView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            centerCustomView.heightAnchor.constraint(equalToConstant: 400),
            centerCustomView.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
    
    func constructXmark() {
        xmark.setBackgroundImage(UIImage(resource: .xmark), for: .normal)
        xmark.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(xmark)
        
        NSLayoutConstraint.activate([
            xmark.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: -20),
            xmark.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: 8),
            xmark.heightAnchor.constraint(equalToConstant: 50),
            xmark.widthAnchor.constraint(equalToConstant: 50)
        ])
        xmark.addTarget(self, action: #selector(transitionXmark), for: .touchUpInside)
    }
    
    func constructGrillLabel() {
        grillLabel.text = "SushiWay"
        grillLabel.textColor = .white
        grillLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        grillLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(grillLabel)
        
        NSLayoutConstraint.activate([
            grillLabel.topAnchor.constraint(equalTo: xmark.bottomAnchor, constant: 5),
            grillLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor)
        ])
    }
    
    func constructDescriptionLabel() {
        descriptionLabel.text = "Under the guidance of an experienced sushi chef, you’ll learn how to choose the right fish, prepare rice, and shape flawless rolls. Try your hand at the art of Japanese cuisine!"
        descriptionLabel.textColor = .white
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: grillLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10)
        ])
    }
    
    func constructFirstLabel() {
        firstLabel.text = "Fill out the booking form"
        firstLabel.textColor = .white
        firstLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
            firstLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor)
        ])
    }
    
    func cunstructFirstView() {
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
        firstTextField.placeholder = "Date 00/00/0000"
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
        secondTextField.placeholder = "Time 00:00"
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
    
    func constructSeventhButton() {
        seventhButton.setBackgroundImage(UIImage(resource: .seventhButton), for: .normal)
        seventhButton.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(seventhButton)
        
        NSLayoutConstraint.activate([
            seventhButton.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 20),
            seventhButton.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            seventhButton.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            seventhButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        seventhButton.addTarget(self, action: #selector(transitionSeventhButton), for: .touchUpInside)
    }
    
    func constructSuccessPopup() {
        successPopupView.backgroundColor = .secondCustom
        successPopupView.layer.cornerRadius = 16
        successPopupView.translatesAutoresizingMaskIntoConstraints = false
        successPopupView.isHidden = true
        successPopupView.alpha = 0
        view.addSubview(successPopupView)
        
        NSLayoutConstraint.activate([
            successPopupView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            successPopupView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            successPopupView.widthAnchor.constraint(equalToConstant: 300),
            successPopupView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        successLabel.text = "Thank you for your booking!"
        successLabel.textColor = .white
        successLabel.textAlignment = .center
        successLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        successLabel.translatesAutoresizingMaskIntoConstraints = false
        successPopupView.addSubview(successLabel)
        
        NSLayoutConstraint.activate([
            successLabel.topAnchor.constraint(equalTo: successPopupView.topAnchor, constant: 40),
            successLabel.leadingAnchor.constraint(equalTo: successPopupView.leadingAnchor, constant: 20),
            successLabel.trailingAnchor.constraint(equalTo: successPopupView.trailingAnchor, constant: -20)
        ])
        
        okButton.setTitle("OK", for: .normal)
        okButton.setTitleColor(.white, for: .normal)
        okButton.backgroundColor = .thirdCustom
        okButton.layer.cornerRadius = 12
        okButton.translatesAutoresizingMaskIntoConstraints = false
        successPopupView.addSubview(okButton)
        
        NSLayoutConstraint.activate([
            okButton.bottomAnchor.constraint(equalTo: successPopupView.bottomAnchor, constant: -30),
            okButton.centerXAnchor.constraint(equalTo: successPopupView.centerXAnchor),
            okButton.widthAnchor.constraint(equalToConstant: 120),
            okButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        okButton.addTarget(self, action: #selector(dismissSuccessPopup), for: .touchUpInside)
    }
    
    func showSuccessPopup() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        successPopupView.isHidden = false
        UIView.animate(withDuration: 0.3) {
            self.successPopupView.alpha = 1
        }
    }
}

extension SushiFormModalViewController {
    private func validateForm() -> Bool {
        guard let dateText = firstTextField.text, !dateText.isEmpty else {
            showAlert(message: "Please enter a date")
            return false
        }
        
        let regex = "^\\d{2}/\\d{2}/\\d{4}$"
        let datePredicate = NSPredicate(format: "SELF MATCHES %@", regex)
        
        guard datePredicate.evaluate(with: dateText) else {
            showAlert(message: "Please enter date in format DD/MM/YYYY")
            return false
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        if let inputDate = dateFormatter.date(from: dateText) {
            let calendar = Calendar.current
            
            let currentDateComponents = calendar.dateComponents([.year, .month, .day], from: Date())
            let currentDate = calendar.date(from: currentDateComponents)!

            if inputDate > currentDate {
                showAlert(message: "Date cannot be in the future")
                return false
            }
            
            guard let threeDaysAgo = calendar.date(byAdding: .day, value: -3, to: currentDate) else {
                return false
            }
            
            if inputDate < threeDaysAgo {
                showAlert(message: "Date cannot be earlier than 3 days ago")
                return false
            }
        } else {
            showAlert(message: "Invalid date")
            return false
        }
        
        guard let timeText = secondTextField.text, !timeText.isEmpty else {
            showAlert(message: "Please enter a time")
            return false
        }
        
        return true
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Invalid Input", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

extension SushiFormModalViewController {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == firstTextField {
            let currentText = textField.text ?? ""
            let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            let allowedCharacters = CharacterSet(charactersIn: "0123456789/")
            let characterSet = CharacterSet(charactersIn: string)
            guard allowedCharacters.isSuperset(of: characterSet) else {
                return false
            }
            
            if newText.count == 2 || newText.count == 5 {
                if string != "" && !newText.hasSuffix("/") {
                    textField.text = newText + "/"
                    return false
                }
            }
            
            return newText.count <= 10
            
        } else if textField == secondTextField {
            let currentText = textField.text ?? ""
            let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            let allowedCharacters = CharacterSet(charactersIn: "0123456789:")
            let characterSet = CharacterSet(charactersIn: string)
            guard allowedCharacters.isSuperset(of: characterSet) else {
                return false
            }
            if newText.count == 2 {
                if string != "" && !newText.hasSuffix(":") {
                    textField.text = newText + ":"
                    return false
                }
            }
            return newText.count <= 5
        }
        
        return true
    }
}

extension SushiFormModalViewController {
    @objc func transitionXmark() {
        let sparkModalTabViewController = SparkModalTabViewController()
        navigationController?.pushViewController(sparkModalTabViewController, animated: true)
    }
    
    @objc func transitionSeventhButton() {
        if validateForm() {
            showSuccessPopup()
        }
    }
    
    @objc func dismissSuccessPopup() {
        UIView.animate(withDuration: 0.3, animations: {
            self.successPopupView.alpha = 0
        }) { _ in
            self.successPopupView.isHidden = true
            
            self.view.backgroundColor = .firstCustom
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                let sparkModalTabViewController = SparkModalTabViewController()
                self.navigationController?.pushViewController(sparkModalTabViewController, animated: true)
            }
        }
    }
}
