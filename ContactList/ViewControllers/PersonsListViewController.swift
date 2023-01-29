//
//  ViewController.swift
//  ContactList
//
//  Created by Kirill Taraturin on 26.01.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var personInfo = Person.getPerson()
  
// MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        let persons = personInfo[indexPath.row]
        var content = person.defaultContentConfiguration()
        content.text = persons.fullName
        person.contentConfiguration = content
        return person
    }
    
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonsDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.person = personInfo[indexPath.row]
    }
    
    
}

