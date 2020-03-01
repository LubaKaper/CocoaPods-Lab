//
//  UserView.swift
//  CocoaPods-Lab
//
//  Created by Liubov Kaper  on 3/1/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit
import SnapKit

class UserView: UIView {
    
    public lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.numberOfLines = 0
        label.text = "address"
        return label
    }()
    public lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.numberOfLines = 0
        label.text = "phone"
        return label
    }()
    public lazy var birthdayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.numberOfLines = 0
        label.text = "birthday"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupAddressConstraints()
        setupPhoneConstraints()
        setupbirthdayConstraints()
    }
    
    private func setupAddressConstraints() {
        addSubview(addressLabel)
        
        addressLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).inset(200); make.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(20)
        }
    }
    private func setupPhoneConstraints() {
        addSubview(phoneLabel)
        phoneLabel.snp.makeConstraints { (make) in
            make.top.equalTo(addressLabel.snp_bottomMargin).offset(20)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(20)
            
        }
    }
    
    private func setupbirthdayConstraints() {
        addSubview(birthdayLabel)
        birthdayLabel.snp.makeConstraints { (make) in
            make.top.equalTo(phoneLabel.snp_bottomMargin).offset(20)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(20)
            
        }
    }
}
