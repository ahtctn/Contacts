//
//  ContactsTableViewController.swift
//  ContactsMVVM
//
//  Created by Ahmet Ali ÇETİN on 27.03.2023.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var viewModel: ContactViewModel? = ContactViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authorization()
    }
    
    private func authorization() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "ContactsTableViewCell", bundle: nil), forCellReuseIdentifier: Constants.CellReusable.id)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.contactList.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellReusable.id, for: indexPath) as? ContactsTableViewCell {
            let details = viewModel?.contactList[indexPath.row]
            
            if let name = details?.name,
                let surname = details?.surname,
                let age = details?.age,
                let gender = details?.gender {
                
                var genderStatusBall: String = ""
                if gender.rawValue == "Male" {
                    genderStatusBall = "🔵"
                } else if gender.rawValue == "Female" {
                    genderStatusBall = "🔴"
                } else {
                    genderStatusBall = "🟡"
                }
                
                cell.personNameLabel.text = "\(name) \(surname)"
                cell.personDetailLabel.text = "\(genderStatusBall) - \(age) years old."
            }
            return cell
        } else { return UITableViewCell() }
    }


}
