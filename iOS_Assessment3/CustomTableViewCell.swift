//
//  LibraryCell.swift
//  iOS_Assessment3
//
//  Created by Ezra Kiteck on 11/8/18.
//  Copyright © 2018 Ezra Kiteck. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    //UI Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    //Variables
    var person: Person = Person(name: "Fred", favoriteThing: "Food", favoriteColor: .red)
    
    //Sets all the labels to their respective values
    func setup(person: Person) {
        nameLabel.text = person.name
        favoriteLabel.text = "Favorite food: \(person.favoriteThing)"
        cellView.backgroundColor = person.favoriteColor
    }
}
