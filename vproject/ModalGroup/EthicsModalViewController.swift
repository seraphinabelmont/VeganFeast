import UIKit

class EthicsModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let firstView = UIView()
    private let secondLabel = UILabel()
    private let thirdLabel = UILabel()
    private let secondView = UIView()
    private let fourthLabel = UILabel()
    private let fifthLabel = UILabel()
    private let thirdView = UIView()
    private let sixthLabel = UILabel()
    private let seventhLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        constructEthicsModalViewController()
    }
}

extension EthicsModalViewController {
    func constructEthicsModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        
        constructFirstView()
        constructSecondLabel()
        constructThirdLabel()
        
        constructSecondView()
        constructFourthLabel()
        constructFifthLabel()
        
        constructThirdView()
        constructSixthLabel()
        constructSeventhLabel()
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
        firstLabel.text = "Ethics"
        firstLabel.textColor = .fourthCustom
        firstLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            firstLabel.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 30)
        ])
    }
    
    func constructFirstView() {
        firstView.backgroundColor = .white
        firstView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstView)
        
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 20),
            firstView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor),
            firstView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor),
            firstView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func constructSecondLabel() {
        secondLabel.text = "Respect for Staff"
        secondLabel.textColor = .secondCustom
        secondLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        firstView.addSubview(secondLabel)
        
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalTo: firstView.topAnchor, constant: 5),
            secondLabel.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 10),
            secondLabel.bottomAnchor.constraint(equalTo: firstView.bottomAnchor, constant: -5)
        ])
    }
    
    func constructThirdLabel() {
        thirdLabel.text = "Always communicate politely with waiters, chefs, and other restaurant staff. They work hard to make your experience enjoyable, so respect their time and effort."
        thirdLabel.textColor = .fifthCustom
        thirdLabel.numberOfLines = 0
        thirdLabel.textAlignment = .left
        thirdLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(thirdLabel)
        
        NSLayoutConstraint.activate([
            thirdLabel.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 10),
            thirdLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            thirdLabel.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10)
        ])
    }
    
    func constructSecondView() {
        secondView.backgroundColor = .white
        secondView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.topAnchor.constraint(equalTo: thirdLabel.bottomAnchor, constant: 10),
            secondView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor),
            secondView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor),
            secondView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func constructFourthLabel() {
        fourthLabel.text = "Respect Personal Space"
        fourthLabel.textColor = .secondCustom
        fourthLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        fourthLabel.translatesAutoresizingMaskIntoConstraints = false
        secondView.addSubview(fourthLabel)
        
        NSLayoutConstraint.activate([
            fourthLabel.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 5),
            fourthLabel.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 10),
            fourthLabel.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -5)
        ])
    }
    
    func constructFifthLabel() {
        fifthLabel.text = "Be mindful of other guests’ personal space. Avoid loud conversations, don’t disturb neighboring tables, and refrain from intruding on others’ discussions."
        fifthLabel.textColor = .fifthCustom
        fifthLabel.numberOfLines = 0
        fifthLabel.textAlignment = .left
        fifthLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        fifthLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(fifthLabel)
        
        NSLayoutConstraint.activate([
            fifthLabel.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 10),
            fifthLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            fifthLabel.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10)
        ])
    }
    
    func constructThirdView() {
        thirdView.backgroundColor = .white
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(thirdView)
        
        NSLayoutConstraint.activate([
            thirdView.topAnchor.constraint(equalTo: fifthLabel.bottomAnchor, constant: 10),
            thirdView.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor),
            thirdView.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor),
            thirdView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func constructSixthLabel() {
        sixthLabel.text = "Cleanliness and Order"
        sixthLabel.textColor = .secondCustom
        sixthLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        sixthLabel.translatesAutoresizingMaskIntoConstraints = false
        thirdView.addSubview(sixthLabel)
        
        NSLayoutConstraint.activate([
            sixthLabel.topAnchor.constraint(equalTo: thirdView.topAnchor, constant: 5),
            sixthLabel.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 10),
            sixthLabel.bottomAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: -5)
        ])
    }
    
    func constructSeventhLabel() {
        seventhLabel.text = "Use utensils and napkins properly, and don’t leave a mess behind. If you accidentally spill or drop something, inform the staff to prevent any inconvenience."
        seventhLabel.textColor = .fifthCustom
        seventhLabel.numberOfLines = 0
        seventhLabel.textAlignment = .left
        seventhLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        seventhLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(seventhLabel)
        
        NSLayoutConstraint.activate([
            seventhLabel.topAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: 10),
            seventhLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            seventhLabel.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10)
        ])
    }
}
