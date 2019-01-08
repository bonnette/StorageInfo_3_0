//
//  ViewController.swift
//  StorageInfo
//
//  Created by Larry Bonnette on 12/20/14.
//  Copyright (c) 2014 com.bubbles. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var Things = [Stuff] ()
    
    @IBOutlet var HParrayCell: UITableView!
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return Things.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HParrayCell", for: indexPath) 
        
        
        let currentCell = Things[(indexPath as NSIndexPath).row]
        let currentImage = currentCell
        cell.textLabel?.text = currentCell.ArrayTitle
        cell.imageView?.image = UIImage(named: currentImage.ArrayImage)
        cell.textLabel?.font = UIFont(name: "Arial", size: 12)
        return cell
        
    }

    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var newThing = Stuff(ArrayTitle: "HPE StoreServ 20000", ArrayImage: "ss20800", ArrayInfo: "ss20800Info", ArrayPoints: "ss20800Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreServ 8000", ArrayImage: "ss8000", ArrayInfo: "ss8000Info", ArrayPoints: "ss8000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreVirtual 3000", ArrayImage: "sv3000", ArrayInfo: "sv3000Info", ArrayPoints: "sv3000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreVirtual 4000", ArrayImage: "p4000", ArrayInfo: "p4000Info", ArrayPoints: "p4000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE Software Defined Storage", ArrayImage: "sds", ArrayInfo: "sdsInfo", ArrayPoints: "sdsPts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE MSA Storage", ArrayImage: "p2000", ArrayInfo: "p2000Info", ArrayPoints: "p2000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreEasy 3000", ArrayImage: "se3000", ArrayInfo: "se3000Info", ArrayPoints: "se3000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreEasy 1000", ArrayImage: "se1000", ArrayInfo: "se1000Info", ArrayPoints: "se1000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreOnce 6600", ArrayImage: "so6000", ArrayInfo: "so6000Info", ArrayPoints: "so6000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreOnce 5000", ArrayImage: "so5000", ArrayInfo: "so5000Info", ArrayPoints: "so5000Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreOnce 3000", ArrayImage: "so3000", ArrayInfo: "so3000Info", ArrayPoints: "so3000Pts")
        Things.append(newThing)
 
        newThing = Stuff(ArrayTitle: "HPE TFinity Tape Library", ArrayImage: "tfin", ArrayInfo: "tfinInfo", ArrayPoints: "tfinPts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreEver ESL", ArrayImage: "eslimg", ArrayInfo: "eslInfo", ArrayPoints: "eslPts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE T950 Tape Library", ArrayImage: "t950", ArrayInfo: "t950Info", ArrayPoints: "t950Pts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE StoreEver MSL", ArrayImage: "mslimg", ArrayInfo: "mslInfo", ArrayPoints: "mslPts")
        Things.append(newThing)
        
        newThing = Stuff(ArrayTitle: "HPE Tape", ArrayImage: "tapeimg", ArrayInfo: "tapeInfo", ArrayPoints: "tapePts")
        Things.append(newThing)


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()   // MARK: - Table view data source
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "About" {} else {
        
        let secondScene = segue.destination as! ImagePageViewController
            
        if let indexPath = self.tableView.indexPathForSelectedRow {
            
        let selectedRow = Things[(indexPath as NSIndexPath).row]
        secondScene.CurrentImage = selectedRow
            
            }
            
        }

    }
    
}

