//
//  ViewController.swift
//  ScrollView
//
//  Created by Anh Lê Việt on 10/4/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imgArray = [UIImage]()
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgArray = [#imageLiteral(resourceName: "2A-3-1"),#imageLiteral(resourceName: "image-13"),#imageLiteral(resourceName: "vjamorotezzukhdvpccc"),#imageLiteral(resourceName: "0904234")]
        
        scrollView.frame = view.frame
        for i in 0..<imgArray.count{
           let imageView = UIImageView()
            imageView.image = imgArray[i]
        
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect (x: CGFloat(xPosition), y : 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            scrollView.contentSize.width =  scrollView.frame.width * CGFloat(i + 1)
           
            scrollView.addSubview(imageView)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

