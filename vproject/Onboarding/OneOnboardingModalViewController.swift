import UIKit

class OneOnboardingModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let firstOnboarding = UIImageView()
    private let bottomView = UIView()
    private let customNextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructOneOnboardingModalViewController()
    }

}

extension OneOnboardingModalViewController {
    func constructOneOnboardingModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructFirstOnboarding()
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
            centerCustomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    func constructFirstLabel() {
        firstLabel.text = "How to book a table?"
        firstLabel.textColor = .fourthCustom
        firstLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor),
            firstLabel.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 30)
        ])
    }
    
    func constructFirstOnboarding() {
        firstOnboarding.image = UIImage(resource: .firstOnboarding)
        firstOnboarding.contentMode = .scaleAspectFill
        firstOnboarding.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstOnboarding)
        
        NSLayoutConstraint.activate([
            firstOnboarding.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 60),
            firstOnboarding.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor),
            firstOnboarding.heightAnchor.constraint(equalToConstant: 250),
            firstOnboarding.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func constructBottomView() {
        bottomView.backgroundColor = .thirdCustom
        bottomView.layer.cornerRadius = 16
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomView)
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 180)
        ])
        constructCustomNextButton()
    }
    
    func constructCustomNextButton() {
        customNextButton.setBackgroundImage(UIImage(resource: .customNextButton), for: .normal)
        customNextButton.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(customNextButton)
        
        NSLayoutConstraint.activate([
            customNextButton.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            customNextButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            customNextButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor),
            customNextButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        customNextButton.addTarget(self, action: #selector(transitionCustomNextButton), for: .touchUpInside)
    }
}

extension OneOnboardingModalViewController {
    @objc func transitionCustomNextButton() {
        let twoOnboardingModalViewController = TwoOnboardingModalViewController()
        navigationController?.pushViewController(twoOnboardingModalViewController, animated: true)
    }
}
