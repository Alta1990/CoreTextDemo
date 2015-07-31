//
//  CTDDisplayView.m
//  CoreTextDemo
//
//  Created by Alta on 15/6/12.
//  Copyright (c) 2015年 Alta. All rights reserved.
//

#import "CTDDisplayView.h"
#import <CoreText/CoreText.h>
@implementation CTDDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path,nil, self.bounds);
    
    NSAttributedString *attString=[[NSAttributedString alloc]initWithString:@"Hello World!"];
    CTFramesetterRef framesetter=CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frame=CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [attString length]), path, nil);
    
    CTFrameDraw(frame, context);
    
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);
}


@end
