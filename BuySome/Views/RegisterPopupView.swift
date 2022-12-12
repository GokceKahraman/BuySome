//
//  RegisterPopupView.swift
//  BuySome
//
//  Created by Gökçe Kahraman on 11.12.2022.
//

import SwiftUI

struct RegisterPopupView: View {
    var body: some View {
        VStack(spacing: .zero){
            icon
            title
            content
            buton
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 24)
        .padding(.vertical, 40)
        .multilineTextAlignment(.center)
//        .background(background) //arka plan siyah renkte oluyor.
        .background(Color.white)
        .overlay(alignment: .topTrailing){
        }
        .transition(.move(edge: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
    }
}

struct RegisterPopupView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPopupView()
            .padding()
            .background(Color(.brown))
            .previewLayout(.sizeThatFits)
    }
}

private extension RegisterPopupView{
    
    var background: some View{
        RoundedCorners(color: .white,
                       tl: 10,
                       tr: 10,
                       bl: 0,
                       br: 0)
        .shadow(color: .white.opacity(0.2),
                radius: 3)

    }
}

private extension RegisterPopupView{
    
    
    var icon: some View{
        Image(systemName: "person.crop.circle.badge.plus")
            .symbolVariant(.circle.fill)
            .font(.system(size: 30,
                          weight: .bold,
                          design: .rounded)
            )
            .foregroundStyle(.blue)
            .padding()
    }
    
    var title: some View{
        Text("Üye Olmayı Unutma")
            .font(.system(size: 25,
                          weight: .bold)
            )
    }
    
    var content: some View{
        Text("A101 Plus'a üye olarak sana özel kampanyalardan anında yararlanabilirsin.")
            .font(.callout)
            .foregroundColor(.black.opacity(0.8))
            .multilineTextAlignment(.center)
            .padding()
    }
    var buton: some View{
        Text("Üye Ol")
            .padding()
            .frame(height: 50)
            .frame(maxWidth: 400)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            .background(Color(.systemCyan))
            .cornerRadius(20)
    }
}

struct RoundedCorners: View{
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View{
        GeometryReader{ geometry in
            Path{ path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                //Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)

                path.move(to: CGPoint(x: w/2, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
                           
            }
            
        }
    }
}
