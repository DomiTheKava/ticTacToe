//
//  drawLineTest.swift
//  ticTacToe
//
//  Created by Dominik Penkava on 9/8/24.
//

import UIKit

class drawLineTest: UIView {

    var start: CGPoint = CGPoint(x: 0, y: 0)
    var finish: CGPoint = CGPoint(x: 300, y: 300)
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: start)
        line.addLine(to: finish)
        line.lineWidth = 10
        line.stroke()
    }
    

}
