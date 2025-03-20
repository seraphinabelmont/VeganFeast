import UIKit

class ThreeOnboardingModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let thirdOnboarding = UIImageView()
    private let bottomView = UIView()
    private let customNextButton = UIButton()
    private let customModalBackButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructOneOnboardingModalViewController()
    }

}

extension ThreeOnboardingModalViewController {
    func constructOneOnboardingModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructThirdOnboarding()
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
    
    func constructThirdOnboarding() {
        thirdOnboarding.image = UIImage(resource: .thirdOnboarding)
        thirdOnboarding.contentMode = .scaleAspectFill
        thirdOnboarding.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(thirdOnboarding)
        
        NSLayoutConstraint.activate([
            thirdOnboarding.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 60),
            thirdOnboarding.centerXAnchor.constraint(equalTo: centerCustomView.centerXAnchor),
            thirdOnboarding.heightAnchor.constraint(equalToConstant: 250),
            thirdOnboarding.widthAnchor.constraint(equalToConstant: 250)
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
            bottomView.heightAnchor.constraint(equalToConstant: 250)
        ])
        constructCustomNextButton()
        constructCustomModalBackButton()
    }
    
    func constructCustomNextButton() {
        customNextButton.setBackgroundImage(UIImage(resource: .customNextButton), for: .normal)
        customNextButton.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(customNextButton)
        
        NSLayoutConstraint.activate([
            customNextButton.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            customNextButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            customNextButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 50),
            customNextButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        customNextButton.addTarget(self, action: #selector(transitionCustomNextButton), for: .touchUpInside)
    }
    
    func constructCustomModalBackButton() {
        customModalBackButton.setBackgroundImage(UIImage(resource: .customModalBackButton), for: .normal)
        customModalBackButton.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(customModalBackButton)
        
        NSLayoutConstraint.activate([
            customModalBackButton.topAnchor.constraint(equalTo: customNextButton.bottomAnchor, constant: 10),
            customModalBackButton.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            customModalBackButton.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: 5),
            customModalBackButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        customModalBackButton.addTarget(self, action: #selector(transitionCustomModalBackButton), for: .touchUpInside)
    }
}

extension ThreeOnboardingModalViewController {
    @objc func transitionCustomNextButton() {
        let fourOnboardingModalViewController = FourOnboardingModalViewController()
        navigationController?.pushViewController(fourOnboardingModalViewController, animated: true)
    }
    
    @objc func transitionCustomModalBackButton() {
        navigationController?.popViewController(animated: true)
    }
}
