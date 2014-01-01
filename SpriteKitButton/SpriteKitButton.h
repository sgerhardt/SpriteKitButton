//
//  SpriteKitButton.h
//  SpriteKitButton
//
//  Created by Sean Gerhardt on 12/29/13.
//  Copyright (c) 2013 Sean Gerhardt. All rights reserved.
//
//  This class is designed to create simple sprite buttons.
//

#import <SpriteKit/SpriteKit.h>

@interface TheClass : NSObject
+ (int)buttonCount;
@end

@interface SpriteKitButton : SKSpriteNode{
    NSString *imageName;
    NSString *text;
    NSString *font;
    int fontSize;
    SKColor *color;
    int factor;
    int height;
    int width;
    int padding;
}

/*
 *  The designated Initializer. 
 *  All other SpriteKitButton initializers should call this
 *  initializer and pass default values for any paramters
 *  they do not specify in their signature.
 */
-(id)initWithTexture:(NSString *)imageName
                text:(NSString *)text
                font:(NSString *)font
            fontSize:(int)fontSize
               color:(UIColor *)color
    colorBlendFactor:(float)factor
              widght:(int)width
              height:(int)height
             padding:(int)padding;

@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *font;
@property (nonatomic) int fontSize;
@property (nonatomic, strong) SKColor *color;
@property (nonatomic) int factor;
@property (nonatomic) int height;
@property (nonatomic) int width;
@property (nonatomic) int padding;

@end
