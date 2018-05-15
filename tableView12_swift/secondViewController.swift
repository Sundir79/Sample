//
//  secondViewController.swift
//  tableView12_swift
//
//  Created by Sundir Talari on 26/02/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var companyImage: UIImageView!
    
    @IBOutlet weak var companyName: UILabel!
    var name = String()
    var shares = String()
    var imagess = String()
    override func viewDidLoad() {
        companyName.text = name
        companyShare.text = shares
        companyImage.image = UIImage(named: imagess)
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var companyShare: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
