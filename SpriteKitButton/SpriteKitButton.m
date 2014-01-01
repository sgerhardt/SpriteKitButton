//
//  SpriteKitButton.m
//  SpriteKitButton
//
//  Created by Sean Gerhardt on 12/29/13.
//  Copyright (c) 2013 Sean Gerhardt. All rights reserved.
//
// This class is designed to create simple sprite buttons.
// It allows for sequential creation and placement of buttons.
//

#import "SpriteKitButton.h"
@interface SpriteKitButton()
{

}
@end
@implementation SpriteKitButton

//Instance variables
@synthesize imageName;
@synthesize text;
@synthesize font;
@synthesize fontSize;
@synthesize color;
@synthesize factor;
@synthesize width;
@synthesize height;
@synthesize padding;

//Counts number of buttons so that they can be placed seqeuntially on the screen - if no position is explicitly given
static int buttonCount = 0;

static CGRect screenBound;
static CGSize screenSize;
static CGFloat screenWidth;
static CGFloat screenHeight;

- (id)initWithTexture:(NSString *)imgName
                 text:(NSString *)txt
                 font:(NSString *)fnt
             fontSize:(int)fntSize
                color:(SKColor *)clr
     colorBlendFactor:(float)fctr
               widght:(int)wid
               height:(int)ht
              padding:(int)pad
{
    
    if (imgName!=nil)
    {
        //Call the superclass's designated initializer
        self = [super initWithTexture:[SKTexture textureWithImageNamed:imgName]];
    }
    else
    {
        self = [super init];
    }

    //Did the superclass's designated initializer succeed?
    if(self){
        
        //Give the instance variables initial values
        [self setText:txt];
        [self setFont:fnt];
        [self setFontSize:fntSize];
        [self setImageName:imgName];

        //Color tint applied to texture
        [self setColor:clr];
        [self setColorBlendFactor:fctr];
        
        //Button's width and height
        [self setWidth:wid];
        [self setHeight:ht];
        [self setSize:CGSizeMake(wid, ht)];
        
        //Position button on screen
        //Start buttons below status bar
        [self setScreenDimensions];
        [self setPosition:CGPointMake(screenWidth/2,
                                      (screenHeight-(ht*buttonCount)-(pad*buttonCount))
                                      -(ht+[UIApplication sharedApplication].statusBarFrame.size.height))];
        
        
        //Set the label node as a child of the button so that text appears
        //in front of button.
        SKLabelNode *buttonText = [SKLabelNode labelNodeWithFontNamed:font];
        [buttonText setText:text];
        [buttonText setFontSize:fontSize];
        [self addChild:buttonText];
    }
    buttonCount++;
    NSLog(@"%d", buttonCount);
    
    //Return the address of the newly initialized object
    return self;
}

//Overrides the init method
//with default values for all arguments but the texture.
-(id)initWithTexture:(NSString*) imgName{
    
    [self setScreenDimensions];
    
    UIImage *img = [UIImage imageNamed:imgName];
    
    //Call the designated initializer using using defaults for unspecified values
    return [self initWithTexture:imgName
                            text:text
                            font:font
                        fontSize:fontSize
                           color:SKColor.whiteColor
                colorBlendFactor:0
                          widght:img.size.width
                          height:img.size.height
                         padding:0];
}

//Init method for a button with given texture and label
-(id)initWithTexture:(NSString*) imgName
                text:txt
                font:ft
{
    
    [self setScreenDimensions];
    
    UIImage *img = [UIImage imageNamed:imgName];
    
    //Call the designated initializer using using defaults for unspecified values
    return [self initWithTexture:imgName
                            text:txt
                            font:ft
                        fontSize:fontSize
                           color:SKColor.whiteColor
                colorBlendFactor:0
                          widght:img.size.width
                          height:img.size.height
                         padding:0];
}

//Set screen dimensions.
//This is used to gauge how big the buttons should be
//and their position if not explicitly stated.
-(void)setScreenDimensions{
    screenBound = [[UIScreen mainScreen] bounds];
    screenSize = screenBound.size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
}


@end
