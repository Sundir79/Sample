//
//  ViewController.swift
//  tableView12_swift
//
//  Created by Sundir Talari on 26/02/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
   
    

    @IBOutlet weak var companyTableView: UITableView!
    var companyname = ["Apple","Google","Facebook","Amazon","Flipkart","Paytm","Snapdeal","Qualcomm","Infosys","Whatsapp","Line","MISYS","Allscripts"]
    var share = [99.2,345.7,6784.4,87.4,76.33,764.4,874.4,6747.3,637.3,75273.2,624.3,2663.3,674.3]
    var images = ["Apple","Google","Facebook","Amazon","Flipkart","Paytm","Snapdeal","Qualcomm","Infosys","Whatsapp","Line","MISYS","Allscripts"]
    override func viewDidLoad() {
        companyTableView.dataSource = self
        companyTableView.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = companyTableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = companyname[indexPath.row]
        cell?.detailTextLabel?.text = "\(share[indexPath.row])"
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "customCell", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? secondViewController{
            destination.name = companyname[(companyTableView.indexPathForSelectedRow?.row)!]
            destination.shares = "\(share[(companyTableView.indexPathForSelectedRow?.row)!])"
            destination.imagess = images[(companyTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

