//
//  CreateStuViewController.swift
//  idea
//
//  Created by 선민재 on 2022/12/20.
//

import UIKit

class CreateStuViewController: BaseViewController<CreateStuViewModel>{

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addView() {
        [].forEach{
            view.addSubview($0)
        }
    }
    override func setLayout() {
        
    }
}
