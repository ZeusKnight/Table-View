//
//  ViewController.swift
//  Table View
//
//  Created by mocha on 7/20/15.
//  Copyright (c) 2015 mocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var sliderValue: UISlider!
    @IBOutlet var myTable: UITableView!
    
    @IBAction func mySlider(sender: AnyObject) {
        myTable.reloadData();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
        
        let identifier = Int(sliderValue.value * 20);
        cell.textLabel?.text = String(identifier * indexPath.row + 1);
        return cell;
    }
}

