//
//  FilterViewController.swift
//  YelpClient
//
//  Created by Salim Madjd on 10/4/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import UIKit

protocol FilterViewControllerDelegate {

	func setFilterParamters(parameters: String)

}

class FilterViewController: UIViewController {


	var delegate:FilterViewControllerDelegate?



    override func viewDidLoad() {
        super.viewDidLoad()

		//var filterButton = UIBarButtonItem(title: "Close", style: UIBarButtonItemStyle.Bordered, target: self, action: Selector("doClose"))

		//self.navigationItem.leftBarButtonItem = filterButton

        // Do any additional setup after loading the view.
    }

	func doClose(){

		delegate?.setFilterParamters("close")

		self.dismissViewControllerAnimated(false, completion: nil)



	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
