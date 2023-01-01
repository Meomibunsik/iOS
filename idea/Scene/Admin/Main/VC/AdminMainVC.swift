//
//  AdminMainVC.swift
//  idea
//
//  Created by 선민재 on 2023/01/02.
//

import UIKit
import MSGLayout
import Then
import Foundation

class AdminMainVC: BaseViewController<AdminMainVM> {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .cyan
    }

    override func addView() {
        [].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        MSGLayout.buildLayout {
            
        }
    }

}
