//
//  DetailViewController.swift
//  CocoaPods-Lab
//
//  Created by Liubov Kaper  on 3/1/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    private let userView = UserView()
    
    private var selectedUser: User?
    
    init(_ selectedUser: User) {
        
        self.selectedUser = selectedUser
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coser:) has  not been implemented")
    }
    
    override func loadView() {
        view = userView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
updateUI()
        
    }
    
    private func updateUI() {
        
        let address = "Address: \(selectedUser?.location.street.number.description ?? " ") \(selectedUser?.location.street.name ?? " "),  \(selectedUser?.location.city ?? ""), \(selectedUser?.location.state ?? ""), \(selectedUser?.location.postcode ?? "")"
        userView.addressLabel.text = address
        userView.phoneLabel.text = "Phone number: \(selectedUser?.phone ?? "")"
        userView.birthdayLabel.text = "Born on: \(selectedUser?.dob.date ?? "")"
    }
    
}
