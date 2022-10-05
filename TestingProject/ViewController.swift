//
//  ViewController.swift
//  TestingProject
//
//  Created by daniel stefanus christiawan on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
    lazy var waButton: UIButton = {
       var btn = UIButton()
        btn.setTitle("Ini button WA", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(waButtonTapped), for: .touchUpInside)
        return btn
    }()
    private var viewModel = WhatsAppViewModel()
    var exUser: User = User(name: "daniel", email: "asbc@gami.com", phoneNumber: 6282119470531)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }

    func addUser() {
        exUser = User(name: "daniel", email: "asbc@gami.com", phoneNumber: 6282119470531)
    }
    
    func setupUI() {
        view.addSubview(waButton)
        
        waButton.anchor(top: nil, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 100, bottom: 0, right: 100))
        waButton.centerView(centerX: view.centerXAnchor, centerY: view.centerYAnchor)
    }
    
    @objc
    func waButtonTapped() {
        let urlWAString: String = viewModel.createLink(number: exUser.phoneNumber)
//        print(exUser.phoneNumber)
        if let urlWA = URL(string: urlWAString) {
            UIApplication.shared.open(urlWA)
        }
    }
}

