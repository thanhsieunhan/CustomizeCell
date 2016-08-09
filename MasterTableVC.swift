//
//  MasterTableVC.swift
//  CustomizeCell
//
//  Created by Le Ha Thanh on 7/29/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    
    var arrayData: [DataItem]!
    var detailVC : DetailVC!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomCellXib", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cellxx")
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let item1 : DataItem = DataItem.init(nameFilm: "Nhà tù Shawshank", nameDirector: "Frank Darabont", imageLogo: "Shawshank.jpg", imagesStar: 5)
        let item2 : DataItem = DataItem.init(nameFilm: "Bố già", nameDirector: "Francis Ford Coppola", imageLogo: "godfather.jpg", imagesStar: 3)
        let item3 : DataItem = DataItem.init(nameFilm: "Kị sỹ bóng đêm", nameDirector: "Christopher Nolan", imageLogo: "darknight.jpg", imagesStar: 4)
        let item4 : DataItem = DataItem.init(nameFilm: "Schindler's List", nameDirector: "Steven Spielberg", imageLogo: "schindler.jpg", imagesStar: 2)
        let item5 : DataItem = DataItem.init(nameFilm: "12 Angry Men", nameDirector: "Sidney Lumet", imageLogo: "angrymen.jpg", imagesStar: 5)
        
        arrayData = [item1, item2, item3, item4, item5]
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillDisappear(animated: Bool) {
        if (navigationController?.topViewController != self) {
            navigationController?.navigationBarHidden = false
        }
        super.viewWillDisappear(animated)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imageView = UIImageView(image: UIImage(named: "IMDB.jpg"))
        imageView.contentMode = .ScaleAspectFill
        
        return imageView
        
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 180
        
        
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell: CustomCellMaster! = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomCellMaster
        
        let cell : CustomCellMaster = self.tableView.dequeueReusableCellWithIdentifier("cellxx", forIndexPath: indexPath) as! CustomCellMaster
        
        let item : DataItem = arrayData[indexPath.row]
        cell.labelNameFilm.text = item.nameFilm
        cell.labelDirector.text = item.nameDirector
        cell.imgViewLogo.image = item.imageLogo
        cell.imgViewStar.image = item.imagesStar
        // Configure the cell...
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
        }
        
        let item : DataItem = arrayData[indexPath.row]
        detailVC.stringTitle = item.nameFilm
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
