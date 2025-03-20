import UIKit

class TableBookModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let firstPlace = UIButton()
    private let secondPlace = UIButton()
    private let thirdPlace = UIButton()
    private let fourthPlace = UIButton()
    private let fifthPlace = UIButton()
    private let sixthPlace = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructTableBookModalViewController()
    }
}

extension TableBookModalViewController {
    func constructTableBookModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructFirstPlace()
        constructSecondPlace()
        constructThirdPlace()
        constructFourthPlace()
        constructFifthPlace()
        constructSixthPlace()
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
        firstLabel.text = "Book a table"
        firstLabel.textColor = .fourthCustom
        firstLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            firstLabel.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 30)
        ])
    }
    
    func constructFirstPlace() {
        firstPlace.setBackgroundImage(UIImage(resource: .firstPlace), for: .normal)
        firstPlace.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstPlace)
        
        NSLayoutConstraint.activate([
            firstPlace.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 10),
            firstPlace.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            firstPlace.heightAnchor.constraint(equalToConstant: 130),
            firstPlace.widthAnchor.constraint(equalToConstant: 130)
        ])
        firstPlace.addTarget(self, action: #selector(transitionTableBookFirst), for: .touchUpInside)
    }
    
    func constructSecondPlace() {
        secondPlace.setBackgroundImage(UIImage(resource: .secondPlace), for: .normal)
        secondPlace.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(secondPlace)
        
        NSLayoutConstraint.activate([
            secondPlace.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 10),
            secondPlace.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            secondPlace.heightAnchor.constraint(equalToConstant: 130),
            secondPlace.widthAnchor.constraint(equalToConstant: 130)
        ])
        secondPlace.addTarget(self, action: #selector(transitionTableBookSecond), for: .touchUpInside)
    }
    
    func constructThirdPlace() {
        thirdPlace.setBackgroundImage(UIImage(resource: .thirdPlace), for: .normal)
        thirdPlace.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(thirdPlace)
        
        NSLayoutConstraint.activate([
            thirdPlace.topAnchor.constraint(equalTo: firstPlace.bottomAnchor, constant: 10),
            thirdPlace.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            thirdPlace.heightAnchor.constraint(equalToConstant: 130),
            thirdPlace.widthAnchor.constraint(equalToConstant: 130)
        ])
        thirdPlace.addTarget(self, action: #selector(transitionTableBookThird), for: .touchUpInside)
    }
    
    func constructFourthPlace() {
        fourthPlace.setBackgroundImage(UIImage(resource: .fourthPlace), for: .normal)
        fourthPlace.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(fourthPlace)
        
        NSLayoutConstraint.activate([
            fourthPlace.topAnchor.constraint(equalTo: secondPlace.bottomAnchor, constant: 10),
            fourthPlace.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            fourthPlace.heightAnchor.constraint(equalToConstant: 130),
            fourthPlace.widthAnchor.constraint(equalToConstant: 130)
        ])
        fourthPlace.addTarget(self, action: #selector(transitionTableBookFourth), for: .touchUpInside)
    }
    
    func constructFifthPlace() {
        fifthPlace.setBackgroundImage(UIImage(resource: .fifthPlace), for: .normal)
        fifthPlace.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(fifthPlace)
        
        NSLayoutConstraint.activate([
            fifthPlace.topAnchor.constraint(equalTo: thirdPlace.bottomAnchor, constant: 10),
            fifthPlace.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            fifthPlace.heightAnchor.constraint(equalToConstant: 130),
            fifthPlace.widthAnchor.constraint(equalToConstant: 130)
        ])
        fifthPlace.addTarget(self, action: #selector(transitionTableBookFifth), for: .touchUpInside)
    }
    
    func constructSixthPlace() {
        sixthPlace.setBackgroundImage(UIImage(resource: .sixthPlace), for: .normal)
        sixthPlace.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(sixthPlace)
        
        NSLayoutConstraint.activate([
            sixthPlace.topAnchor.constraint(equalTo: fourthPlace.bottomAnchor, constant: 10),
            sixthPlace.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            sixthPlace.heightAnchor.constraint(equalToConstant: 130),
            sixthPlace.widthAnchor.constraint(equalToConstant: 130)
        ])
        sixthPlace.addTarget(self, action: #selector(transitionTableBookSixth), for: .touchUpInside)
    }
}
    
extension TableBookModalViewController {
    @objc func transitionTableBookFirst() {
        let bookModalViewController = BookModalViewController()
        navigationController?.pushViewController(bookModalViewController, animated: true)
    }
    
    @objc func transitionTableBookSecond() {
        let bookModalViewController = BookModalViewController()
        navigationController?.pushViewController(bookModalViewController, animated: true)
    }
    
    @objc func transitionTableBookThird() {
        let bookModalViewController = BookModalViewController()
        navigationController?.pushViewController(bookModalViewController, animated: true)
    }
    
    @objc func transitionTableBookFourth() {
        let bookModalViewController = BookModalViewController()
        navigationController?.pushViewController(bookModalViewController, animated: true)
    }
    
    @objc func transitionTableBookFifth() {
        let bookModalViewController = BookModalViewController()
        navigationController?.pushViewController(bookModalViewController, animated: true)
    }
    
    @objc func transitionTableBookSixth() {
        let bookModalViewController = BookModalViewController()
        navigationController?.pushViewController(bookModalViewController, animated: true)
    }
}
