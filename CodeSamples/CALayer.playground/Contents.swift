import UIKit

func gradientLayer(vw: UIView) {
    let layer = CAGradientLayer()
    layer.frame = CGRect(x: 64, y: 64, width: 160, height: 160)
    layer.colors = [UIColor.red.cgColor, UIColor.black.cgColor]
    vw.layer.addSublayer(layer)
}

func shapeLayer(vw: UIView) {
    let layer = CAShapeLayer()
    layer.path = UIBezierPath(roundedRect: CGRect(x: 64, y: 64, width: 160, height: 160), cornerRadius: 50).cgPath
    layer.fillColor = UIColor.red.cgColor
    vw.layer.addSublayer(layer)
}

func createParticles(vw: UIView) {
    let particaleEmitter = CAEmitterLayer()
    particaleEmitter.emitterPosition = CGPoint(x: vw.center.x, y: -96)
    particaleEmitter.emitterShape = kCAEmitterLayerLine
    particaleEmitter.emitterSize = CGSize(width: vw.frame.size.width, height: 1)
    
    let red = makeEmitterCell(color: UIColor.red)
    let green = makeEmitterCell(color: UIColor.green)
    let blue = makeEmitterCell(color: UIColor.blue)
    
    particaleEmitter.emitterCells = [red, green, blue]
    
    vw.layer.addSublayer(particaleEmitter)
}

func makeEmitterCell(color: UIColor) -> CAEmitterCell {
    let cell = CAEmitterCell()
    cell.birthRate = 3
    cell.lifetime = 7.0
    cell.lifetimeRange = 0
    cell.color = color.cgColor
    cell.velocity = 200
    cell.velocityRange = 50
    cell.emissionLongitude = CGFloat.pi / 4
    cell.spin = 2
    cell.spinRange = 3
    cell.scaleRange = 0.5
    cell.scaleSpeed = -0.05
    
    cell.contents = UIImage(named: "particle_confetti")?.cgImage
    
    return cell
}
