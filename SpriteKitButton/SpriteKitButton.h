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

typedef enum startPositionTypes
{
    TopLeft,
    TopRight,
    TopMid,
    Mid,
    MidLeft,
    MidRight
}StartPosition;

//Set screen dimensions for device
+ (void)setScreenDimensions;

//The starting position from which to create buttons
+ (void)startPosition:(StartPosition)pos;

+(void)startPositionX:(int)x;

+(void)startPositionY:(int)y;

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

//Init method for a button with given texture and label
-(id)initWithTexture:(NSString *)imageName
                text:txt
                font:ft;

//Overrides the init method with default values for all arguments but the texture.
-(id)initWithTexture:(NSString *)imageName;


//Instance variables
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
