//
//  PersonsDetailsViewController.swift
//  ContactList
//
//  Created by Kirill Taraturin on 26.01.2023.
//

import UIKit

class PersonsDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        navigationItem.title = person.fullName

    }


}
