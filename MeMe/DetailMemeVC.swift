//
//  DetailVC.swift
//  MeMe2.0
//
//  Created by Deborah on 1/9/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import UIKit

class DetailMemeVC: UIViewController {

    @IBOutlet weak var Edit: UIBarButtonItem!
    var meme: Meme!
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
        imgView.image = meme.memedImage
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.setRightBarButton(Edit, animated: true)
        
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func editMeme(_ sender: Any) {
        let memeEditorVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorVC") as! MemeEditorVC
        MemeEditorVC.memeSentFromDetail = self.meme
        self.navigationController?.pushViewController(memeEditorVC, animated: true)
    }
    
    }
    

