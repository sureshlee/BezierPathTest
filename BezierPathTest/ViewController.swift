//
//  ViewController.swift
//  BezierPathTest
//
//  Created by Suresh R on 27/07/17.
//  Copyright © 2017 Tringapps Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- <ViewController Life cycle delegates>
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let triangleView = Custom(frame: CGRect(x: self.view.frame.origin.x + 40, y: 150, width: self.view.frame.size.width - 80, height: 200))
        triangleView.backgroundColor = UIColor.green
        self.view.addSubview(triangleView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK:// Create Custom views
class Custom: UIView {
    override func draw(_ rect: CGRect) {
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        bezierPath.addLine(to: CGPoint(x: rect.origin.x, y: rect.size.height))
        bezierPath.addLine(to: CGPoint(x: rect.width, y: rect.height))
        bezierPath.addLine(to: CGPoint(x: rect.width, y: rect.origin.y))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 4.0
        shapeLayer.path = bezierPath.cgPath
        
        self.layer.addSublayer(shapeLayer)
        
        bezierPath.close()
        bezierPath.fill()
        
    }
}
