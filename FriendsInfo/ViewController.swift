//
//  ViewController.swift
//  FriendsInfo
//
//  Created by Shaikat on 1/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var friendTableView: UITableView!
    
    var cellIdentifier = "friendListCell"
    
    var friendArray : [Friends] = [Friends(image: UIImage(named: "chris.png") ?? UIImage(), name: "Chris", description: "This is Chris"),
    Friends(image: UIImage(named: "ian.png") ?? UIImage(), name: "Ian", description: "This is Ian"),
    Friends(image: UIImage(named: "mim.png") ?? UIImage(), name: "mim", description: "This is mim"),
    Friends(image: UIImage(named: "sayma.png") ?? UIImage(), name: "sayma", description: "This is sayma")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        friendTableView.translatesAutoresizingMaskIntoConstraints = false
        friendTableView.separatorStyle = .none
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? FriendTableViewCell{
            cell.friendImageView.image = friendArray[indexPath.row].image
            cell.friendName.text = friendArray[indexPath.row].name
            cell.friendDescription.text = friendArray[indexPath.row].description
            cell.selectionStyle = .none
            return cell
        }else {
            return UITableViewCell()
        }
    }


}

