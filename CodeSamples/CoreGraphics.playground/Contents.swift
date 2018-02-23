import UIKit

// Manhattan distance
func CGPointManhattanDistance(from: CGPoint, to: CGPoint) -> CGFloat {
    return (abs(from.x - to.x) + abs(from.y - to.y))
}

// Calculating the distance between two CGPoints
func CGPointDistanceSquared(from: CGPoint, to: CGPoint) -> CGFloat {
    return (from.x - to.x) * (from.x - to.x) + (from.y - to.y) * (from.y - to.y)
}

func CGPointDistance(from: CGPoint, to: CGPoint) -> CGFloat {
    return sqrt(CGPointDistanceSquared(from: from, to: to))
}

// Draw a circle
func drawCircle(imageView: UIImageView) {
    let render = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
    let img = render.image { ctx in
        ctx.cgContext.setFillColor(UIColor.red.cgColor)
        ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
        ctx.cgContext.setLineWidth(10)
        
        let rectange = CGRect(x: 0, y: 0, width: 512, height: 512)
        ctx.cgContext.addEllipse(in: rectange)
        ctx.cgContext.drawPath(using: .fillStroke)
    }
    
    imageView.image = img
}

// Draw a square
func drawSquare(imageView: UIImageView) {
    let render = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
    let img = render.image { ctx in
        ctx.cgContext.setFillColor(UIColor.red.cgColor)
        ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
        ctx.cgContext.setLineWidth(10)
        
        let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
        
        ctx.cgContext.addRect(rectangle)
        ctx.cgContext.drawPath(using: .fillStroke)
    }
    
    imageView.image = img
}

// Draw text string
func drawString(imageView: UIImageView) {
    let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
    let img = renderer.image { ctx in
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        let attrs = [NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Thin", size: 36)!, NSAttributedStringKey.paragraphStyle: paragraphStyle]
        
        let string = "Don't cry because it's over, smile because it happened."
        string.draw(with: CGRect(x: 32, y: 32, width: 448, height: 448), options: .usesLineFragmentOrigin, attributes: attrs, context: nil)
    }
    
    imageView.image = img
}

// Render PDF to image
func drawPDFfromURL(url: URL) -> UIImage? {
    guard let document = CGPDFDocument(url as CFURL) else { return nil }
    guard let page = document.page(at: 1) else { return nil }
    
    let pageRect = page.getBoxRect(.mediaBox)
    let renderer = UIGraphicsImageRenderer(size: pageRect.size)
    
    let img = renderer.image { ctx in
        UIColor.white.set()
        ctx.fill(pageRect)
        
        ctx.cgContext.translateBy(x: 0.0, y: pageRect.size.height)
        ctx.cgContext.scaleBy(x: 1.0, y: -1.0)
        
        ctx.cgContext.drawPDFPage(page)
    }
    
    return img
}
