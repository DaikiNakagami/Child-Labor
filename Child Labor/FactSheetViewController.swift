//
//  FactSheetViewController.swift
//  Child Labor
//
//  Created by E J Kalafarski on 9/6/15.
//  Copyright © 2015 U.S. Department of Labor. All rights reserved.
//

import UIKit

class FactSheetViewController: GAITrackedViewController {
    
    var factSheet = "Fact Sheet-Reports 3.34pm"

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // View name for Google Analytics
        self.screenName = "Fact Sheet Screen"
        
        // Get the contents of the file to load
        let localFilePath = NSBundle.mainBundle().pathForResource(factSheet, ofType: "pdf")
        let targetURL = NSURL.fileURLWithPath(localFilePath!)
        
        let pdfData = NSData(contentsOfURL: targetURL)
        
        webView.loadData(pdfData!, MIMEType: "application/pdf", textEncodingName: "utf-8", baseURL: NSURL())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
