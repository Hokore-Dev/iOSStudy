//
//  ViewController.swift
//  ImageDownloader
//
//  Created by minjun.ha on 11/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController , URLSessionDownloadDelegate {
    
    
    var downloadTask:URLSessionDownloadTask!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func downloadButton(_ sender: Any) {
        imageView.image = nil
        progressView.setProgress(0, animated: false)
        indicatorView.startAnimating()
        
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: OperationQueue.main)
        
//        downloadTask = session.downloadTask(with: URL(string :"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!)
        
        downloadTask = session.downloadTask(with: URL(string : "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!, completionHandler: {
            (data, response, error) -> Void in
            let dataTemp:Data = try! Data(contentsOf: data!)
            self.imageView.image = UIImage(data:dataTemp)
            self.indicatorView.stopAnimating()
            })
        downloadTask.resume()
    }
    
    @IBAction func suspendAction(_ sender: Any) {
        downloadTask.suspend()
    }
    
    @IBAction func resumeAction(_ sender: Any) {
        downloadTask.resume()
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        downloadTask.cancel()
        indicatorView.stopAnimating()
        progressView.setProgress(0, animated: true)
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("location: \(location)")
        let dataTemp:Data = try! Data(contentsOf: location)
        self.imageView.image = UIImage(data:dataTemp)
        indicatorView.stopAnimating()
        
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        print("bytes Written : \(bytesWritten)")
        print("total Bytes Written : \(totalBytesWritten)")
        print("total Bytes Expected To Write : \(totalBytesExpectedToWrite)")
        
        let progress:Float = Float(totalBytesExpectedToWrite) / Float(totalBytesExpectedToWrite)
        progressView.setProgress(progress, animated: true)
    }
}

