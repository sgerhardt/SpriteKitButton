//
//  MyScene.m
//  SpriteKitButton
//
//  Created by Sean Gerhardt on 12/29/13.
//  Copyright (c) 2013 Sean Gerhardt. All rights reserved.
//

#import "MyScene.h"
#import "SpriteKitButton.h"


@implementation MyScene

SpriteKitButton *myButton;
SpriteKitButton *myButton2;
SpriteKitButton *myButton3;
SpriteKitButton *myButton4;
SpriteKitButton *myButton5;

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];

        //Set the initial position to start building buttons from
        [SpriteKitButton startPosition:Mid];
        
        myButton = [[SpriteKitButton alloc] initWithTexture:@"stretchable_button"
                                                                        text:@"Button 1"
                                                                        font:@"Arial"
                                                                    fontSize:12
                                                                       color:nil
                                                            colorBlendFactor:0
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        //Name used to identify touch events
        [myButton setName:@"myButton"];
        [self addChild:myButton];
        
        myButton2 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 2"
                                                                        font:@"Didot"
                                                                    fontSize:12
                                                                       color:[SKColor blackColor]
                                                            colorBlendFactor:0
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [myButton2 setName:@"myButton2"];
        [self addChild:myButton2];
        
        myButton3 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 3"
                                                                        font:@"Kailasa Bold"
                                                                    fontSize:12
                                                                       color:[SKColor blackColor]
                                                            colorBlendFactor:0
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [myButton3 setName:@"myButton3"];
        [self addChild:myButton3];
        
        myButton4 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 4"
                                                                        font:@"Avenir Book"
                                                                    fontSize:12
                                                                       color:[SKColor blackColor]
                                                            colorBlendFactor:0
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [myButton4 setName:@"myButton4"];
        [self addChild:myButton4];
        
        myButton5 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 5"
                                                                        font:@"Chalkduster"
                                                                    fontSize:12
                                                                       color:[SKColor blackColor]
                                                            colorBlendFactor:0
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [myButton5 setName:@"myButton5"];
        [self addChild:myButton5];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Called when a touch begins

    for (UITouch *touch in touches) {
        
        CGPoint location = [touch locationInNode:self];
        
        SKNode *node = [self nodeAtPoint:location];
        
        //If button touched, do custom action here...
        if ([node.name isEqualToString:@"myButton"]) {
            NSLog(@"MyButton has been touched!");
            [myButton setColorBlendFactor:.5];
        }
        else if ([node.name isEqualToString:@"myButton2"]) {
            NSLog(@"MyButton2 has been touched!");
            [myButton2 setColorBlendFactor:.5];
        }
        else if ([node.name isEqualToString:@"myButton3"]) {
            NSLog(@"MyButton3 has been touched!");
            [myButton3 setColorBlendFactor:.5];
        }
        else if ([node.name isEqualToString:@"myButton4"]) {
            NSLog(@"MyButton4 has been touched!");
            [myButton4 setColorBlendFactor:.5];
        }
        else if ([node.name isEqualToString:@"myButton5"]) {
            NSLog(@"MyButton5 has been touched!");
            [myButton5 setColorBlendFactor:.5];
        }
        
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    //Called when a touch ends
    
    for (UITouch *touch in touches) {
        
        CGPoint location = [touch locationInNode:self];
        
        SKNode *node = [self nodeAtPoint:location];
        
        //If button touched, do custom action here...
        if ([node.name isEqualToString:@"myButton"]) {
            NSLog(@"MyButton touch removed!");
            myButton.colorBlendFactor = 0;
        }
        else if ([node.name isEqualToString:@"myButton2"]) {
            NSLog(@"MyButton2 touch removed!!");
            myButton2.colorBlendFactor = 0;
        }
        else if ([node.name isEqualToString:@"myButton3"]) {
            NSLog(@"MyButton3 touch removed!");
            myButton3.colorBlendFactor = 0;
        }
        else if ([node.name isEqualToString:@"myButton4"]) {
            NSLog(@"MyButton4 touch removed!");
            myButton4.colorBlendFactor = 0;
        }
        else if ([node.name isEqualToString:@"myButton5"]) {
            NSLog(@"MyButton5 touch removed!");
            myButton5.colorBlendFactor = 0;
        }
        
    }
}

-(void)update:(CFTimeInterval)currentTime {
    // Called before each frame is rendered
    
}

@end
