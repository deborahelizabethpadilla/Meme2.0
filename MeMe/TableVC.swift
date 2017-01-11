//
//  TableVC.swift
//  MeMe2.0
//
//  Created by Deborah on 1/9/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import UIKit


class TableVC: UITableViewController {
    
    var memes: [Meme]!

    override func viewWillAppear(_ animated: Bool) {
        let applicationDelegate = (UIApplication.shared.delegate as! AppDelegate)
        memes = applicationDelegate.memes
        
        self.tableView.reloadData()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath) as! MemeTableViewCell
        let meme = memes[indexPath.row]
        cell.memeImg.image = meme.memedImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memeView = self.storyboard?.instantiateViewController(withIdentifier: "DetailMemeVC") as! DetailMemeVC
        memeView.meme = self.memes[indexPath.row]
        self.navigationController?.pushViewController(memeView, animated: true)
    }
}
