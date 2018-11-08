//
//  ViewController.swift
//  iOS_Assessment3
//
//  Created by Ezra Kiteck on 11/8/18.
//  Copyright © 2018 Ezra Kiteck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UI Table View
    @IBOutlet weak var tableView: UITableView!
    
    //Gets the instance of Library
    let library = Library.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Fills library with preset people
        PopulatePeople()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Populates the "people" array with preset people
    func PopulatePeople() {
        let newPerson = Person(name: "Bob", favoriteThing: "Noodles", favoriteColor: .red)
        library.people.append(newPerson)
        let newPerson1 = Person(name: "John", favoriteThing: "Pizza", favoriteColor: .yellow)
        library.people.append(newPerson1)
        let newPerson2 = Person(name: "Samantha", favoriteThing: "Croissant", favoriteColor: .green)
        library.people.append(newPerson2)
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    //Returns the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return library.people.count
    }
    
    //Specifies the index, stores a person in the cell, and puts everything in their specific labels
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomTableViewCell
        let person = library.people[indexPath.row]
        cell.person = person
        //Sets up the labels
        cell.setup(person: person)
        
        return cell
    }
    
    //Solidifies the cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}


