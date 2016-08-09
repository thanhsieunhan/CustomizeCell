//
//  DetailVC.swift
//  CustomizeCell
//
//  Created by Le Ha Thanh on 7/29/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var stringTitle : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.setNavigationBarHidden(false, animated: true)
        self.view.backgroundColor = UIColor.blackColor()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.title = stringTitle
        print(stringTitle)
        self.imageView.image = UIImage(named : "\(stringTitle).jpg")
        
    }
}
