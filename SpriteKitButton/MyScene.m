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

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        SpriteKitButton *myButton = [[SpriteKitButton alloc] initWithTexture:@"stretchable_button"
                                                                        text:@"Button 1"
                                                                        font:@"Arial"
                                                                    fontSize:12
                                                                       color:nil
                                                            colorBlendFactor:0
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        
        [self addChild:myButton];
        
        
        SpriteKitButton *myButton2 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 2"
                                                                        font:@"Didot"
                                                                    fontSize:12
                                                                       color:[SKColor orangeColor]
                                                            colorBlendFactor:.2
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [self addChild:myButton2];
        
        SpriteKitButton *myButton3 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 3"
                                                                        font:@"Kailasa Bold"
                                                                    fontSize:12
                                                                       color:[SKColor orangeColor]
                                                            colorBlendFactor:.4
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [self addChild:myButton3];
        
        SpriteKitButton *myButton4 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 4"
                                                                        font:@"Avenir Book"
                                                                    fontSize:12
                                                                       color:[SKColor orangeColor]
                                                            colorBlendFactor:.6
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [self addChild:myButton4];
 
        SpriteKitButton *myButton5 = [[SpriteKitButton alloc]initWithTexture:@"stretchable_button"
                                                                        text:@"Button 5"
                                                                        font:@"Chalkduster"
                                                                    fontSize:12
                                                                       color:[SKColor orangeColor]
                                                            colorBlendFactor:.8
                                                                      widght:100
                                                                      height:30
                                                                     padding:10];
        [self addChild:myButton5];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
//    for (UITouch *touch in touches) {
//        CGPoint location = [touch locationInNode:self];
//        
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//        
//        sprite.position = location;
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
//        
//        [self addChild:sprite];
//    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
