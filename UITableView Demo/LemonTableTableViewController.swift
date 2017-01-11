//
//  LemonTableTableViewController.swift
//  UITableView Demo
//
//  Created by Akekapon Suebprom on 1/11/2560 BE.
//  Copyright © 2560 kratostracking. All rights reserved.
//

import UIKit

class LemonTableTableViewController: UITableViewController {

    
    var lemons = ["Eureka Lemon","Lisbon Lemon","Ponderosa Lemon","Pink Lemons","Rough Lemon","Sweet Lemons","Sanbokan Lemon","Meyer Lemons"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lemons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = lemons[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
}
