//
//  DataItem.swift
//  CustomizeCell
//
//  Created by Le Ha Thanh on 7/29/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit

class DataItem {
    var imageLogo: UIImage!
    var nameFilm : String!
    var nameDirector : String!
    var imagesStar : UIImage!
    
    init(nameFilm : String, nameDirector : String, imageLogo : String, imagesStar: Int) {
        self.imageLogo = UIImage(named: imageLogo)
        self.imagesStar = UIImage(named: "\(imagesStar)stars.png")
        self.nameDirector =  nameDirector
        self.nameFilm = nameFilm
    }
}
