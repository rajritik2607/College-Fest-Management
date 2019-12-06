//
//  profileViewController.swift
//  DBMSproject
//
//  Created by Ritik Suryawanshi on 06/11/2019.
//  Copyright © 2019 Ritik Suryawanshi. All rights reserved.
//

import UIKit



class profileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventNames.count
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1=proflieTableView.dequeueReusableCell(withIdentifier: "iden2", for: indexPath)
        cell1.backgroundColor = .black
        cell1.textLabel?.text=eventNames[indexPath.row]
        cell1.textLabel?.textColor = .black
        return cell1
        
        
        // awefberifberuf
//        serthwre
    }
    
    
    
    
    // Do any additional setup after loading the view.
    @IBOutlet weak var proflieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        proflieTableView.dataSource = self
        proflieTableView.delegate = self
    }
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
