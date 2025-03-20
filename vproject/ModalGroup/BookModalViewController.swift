import UIKit

class BookModalViewController: UIViewController {
    
    private let centerCustomView = UIView()
    private let firstLabel = UILabel()
    private let tableOne = UIButton()
    private let tableTwo = UIButton()
    private let tableThree = UIButton()
    private let tableFour = UIButton()
    private let tableFive = UIButton()
    private let tableSixth = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .firstCustom
        navigationItem.hidesBackButton = true
        constructBookModalViewController()
    }
}

extension BookModalViewController {
    func constructBookModalViewController() {
        constructCenterCustomView()
        constructFirstLabel()
        constructTableOne()
        constructTableTwo()
        constructTableThree()
        constructTableFour()
        constructTableFive()
        constructTableSixth()
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
            centerCustomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
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
    
    func constructTableOne() {
        tableOne.setBackgroundImage(UIImage(resource: .tableOne), for: .normal)
        tableOne.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(tableOne)
        
        NSLayoutConstraint.activate([
            tableOne.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 20),
            tableOne.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            tableOne.heightAnchor.constraint(equalToConstant: 100),
            tableOne.widthAnchor.constraint(equalToConstant: 150)
        ])
        tableOne.addTarget(self, action: #selector(transitionTable), for: .touchUpInside)
    }
    
    func constructTableTwo() {
        tableTwo.setBackgroundImage(UIImage(resource: .tableTwo), for: .normal)
        tableTwo.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(tableTwo)
        
        NSLayoutConstraint.activate([
            tableTwo.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 20),
            tableTwo.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            tableTwo.heightAnchor.constraint(equalToConstant: 100),
            tableTwo.widthAnchor.constraint(equalToConstant: 150)
        ])
        tableTwo.addTarget(self, action: #selector(transitionTable), for: .touchUpInside)
    }
    
    func constructTableThree() {
        tableThree.setBackgroundImage(UIImage(resource: .tableThree), for: .normal)
        tableThree.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(tableThree)
        
        NSLayoutConstraint.activate([
            tableThree.topAnchor.constraint(equalTo: tableOne.bottomAnchor, constant: 20),
            tableThree.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            tableThree.heightAnchor.constraint(equalToConstant: 100),
            tableThree.widthAnchor.constraint(equalToConstant: 150)
        ])
        tableThree.addTarget(self, action: #selector(transitionTable), for: .touchUpInside)
    }
    
    func constructTableFour() {
        tableFour.setBackgroundImage(UIImage(resource: .tableFour), for: .normal)
        tableFour.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(tableFour)
        
        NSLayoutConstraint.activate([
            tableFour.topAnchor.constraint(equalTo: tableTwo.bottomAnchor, constant: 20),
            tableFour.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            tableFour.heightAnchor.constraint(equalToConstant: 100),
            tableFour.widthAnchor.constraint(equalToConstant: 150)
        ])
        tableFour.addTarget(self, action: #selector(transitionTable), for: .touchUpInside)
    }
    
    func constructTableFive() {
        tableFive.setBackgroundImage(UIImage(resource: .tableFive), for: .normal)
        tableFive.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(tableFive)
        
        NSLayoutConstraint.activate([
            tableFive.topAnchor.constraint(equalTo: tableThree.bottomAnchor, constant: 20),
            tableFive.leadingAnchor.constraint(equalTo: centerCustomView.leadingAnchor, constant: 10),
            tableFive.heightAnchor.constraint(equalToConstant: 100),
            tableFive.widthAnchor.constraint(equalToConstant: 150)
        ])
        tableFive.addTarget(self, action: #selector(transitionTable), for: .touchUpInside)
    }
    
    func constructTableSixth() {
        tableSixth.setBackgroundImage(UIImage(resource: .tableSixth), for: .normal)
        tableSixth.translatesAutoresizingMaskIntoConstraints = false
        centerCustomView.addSubview(tableSixth)
        
        NSLayoutConstraint.activate([
            tableSixth.topAnchor.constraint(equalTo: tableFour.bottomAnchor, constant: 20),
            tableSixth.trailingAnchor.constraint(equalTo: centerCustomView.trailingAnchor, constant: -10),
            tableSixth.heightAnchor.constraint(equalToConstant: 100),
            tableSixth.widthAnchor.constraint(equalToConstant: 150)
        ])
        tableSixth.addTarget(self, action: #selector(transitionTable), for: .touchUpInside)
    }
}

extension BookModalViewController {
    @objc func transitionTable() {
        let bookingFormModalViewController = BookingFormModalViewController()
        navigationController?.pushViewController(bookingFormModalViewController, animated: true)
    }
}
