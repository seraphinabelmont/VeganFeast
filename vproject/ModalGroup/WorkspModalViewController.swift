import UIKit

class WorkspModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let wrOne = UIButton()
    private let wrTwo = UIButton()
    private let wrThree = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        constructWorkspModalViewController()
    }
}

extension WorkspModalViewController {
    func constructWorkspModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructWrOne()
        constructWrTwo()
        constructWrThree()
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
        firstLabel.text = "Workshop"
        firstLabel.textColor = .fourthCustom
        firstLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            firstLabel.topAnchor.constraint(equalTo: centerCustomView.topAnchor, constant: 30)
        ])
    }
    
    func constructWrOne() {
        wrOne.setBackgroundImage(UIImage(resource: .wrOne), for: .normal)
        wrOne.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(wrOne)
        
        NSLayoutConstraint.activate([
            wrOne.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 10),
            wrOne.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            wrOne.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            wrOne.heightAnchor.constraint(equalToConstant: 130)
        ])
        wrOne.addTarget(self, action: #selector(transitionWrOne), for: .touchUpInside)
    }
    
    func constructWrTwo() {
        wrTwo.setBackgroundImage(UIImage(resource: .wrTwo), for: .normal)
        wrTwo.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(wrTwo)
        
        NSLayoutConstraint.activate([
            wrTwo.topAnchor.constraint(equalTo: wrOne.bottomAnchor, constant: 10),
            wrTwo.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            wrTwo.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            wrTwo.heightAnchor.constraint(equalToConstant: 130)
        ])
        wrTwo.addTarget(self, action: #selector(transitionWrTwo), for: .touchUpInside)
    }
    
    func constructWrThree() {
        wrThree.setBackgroundImage(UIImage(resource: .wrThree), for: .normal)
        wrThree.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(wrThree)
        
        NSLayoutConstraint.activate([
            wrThree.topAnchor.constraint(equalTo: wrTwo.bottomAnchor, constant: 10),
            wrThree.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            wrThree.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            wrThree.heightAnchor.constraint(equalToConstant: 130)
        ])
        wrThree.addTarget(self, action: #selector(transitionWrThree), for: .touchUpInside)
    }
}

extension WorkspModalViewController {
    @objc func transitionWrOne() {
        let grillFormModalViewController = GrillFormModalViewController()
        navigationController?.pushViewController(grillFormModalViewController, animated: true)
    }
    
    @objc func transitionWrTwo() {
        let pastaFormModalViewController = PastaFormModalViewController()
        navigationController?.pushViewController(pastaFormModalViewController, animated: true)
    }
    
    @objc func transitionWrThree() {
        let sushiFormModalViewController = SushiFormModalViewController()
        navigationController?.pushViewController(sushiFormModalViewController, animated: true)
    }
}
