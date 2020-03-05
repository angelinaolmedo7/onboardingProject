//
//  PastBoxesTableViewController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class PastBoxesTableViewController: UITableViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.register(
                        PastBoxTableViewCell.nib,
                        forCellReuseIdentifier: PastBoxTableViewCell.identifier
            )

            // Do any additional setup after loading the view.
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

             let selectedPastBox = past_boxes_presets[indexPath.row]
             let detailVC = ItemTableViewController()
             detailVC.box = selectedPastBox
             navigationController?.pushViewController(detailVC, animated: true)
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return past_boxes_presets.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell( withIdentifier: PastBoxTableViewCell.identifier, for: indexPath) as! PastBoxTableViewCell
          let box = past_boxes_presets[indexPath.row]
          cell.configure(box)
          return cell
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)

            tableView.reloadData()
        }
    }
