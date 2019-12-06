//
//  eventDescriptionViewControlller.swift
//  DBMSproject
//
//  Created by Ritik Suryawanshi on 06/11/2019.
//  Copyright © 2019 Ritik Suryawanshi. All rights reserved.
//

import UIKit

class eventDescriptionViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desc1Label: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var feeLabel: UILabel!
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var derButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        titleLabel.text = eventNames[myIndex]
        desc1Label.text = eventDetail1[myIndex]
        dateLabel.text = eventDate[myIndex]
        venueLabel.text = eventVenue[myIndex]
        timeLabel.text = eventTime[myIndex]
        feeLabel.text = eventFee[myIndex]
        derButton.isEnabled = false
        derButton.tintColor = .white
        
    }
    
    @IBAction func registerButton(_ sender: Any) {
        regButton.setTitle("REGISTERED", for: .normal)
       regButton.isEnabled=false
        derButton.isEnabled = true
        derButton.tintColor = .red
        //x.insert(eventNames[myIndex], at: y);
        //y=y+1;
        
    }
    
    @IBAction func deregisterButton(_ sender: Any) {
        
        regButton.isEnabled=true
        regButton.setTitle("REGISTER", for: .normal)
        derButton.isEnabled = false
        derButton.titleLabel?.textColor = .white
       // x.remove(at: y);
        //y=y-1;
    
    }
    // Do any additional setup after loading the view.
    
    
}
