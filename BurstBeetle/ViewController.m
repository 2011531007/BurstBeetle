//
//  ViewController.m
//  BurstBeetle
//
//  Created by 浦本　竜 on 13/12/12.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    Chara* player;
    CADisplayLink *timer;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    player = [[Chara alloc]initWithX:150 Y:320 width:30 height:50 image:@"Beetle.jpg"];
    playerImage = [player Draw];
    [self.view addSubview:playerImage];
    
    timer = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateDisplay)];
    [timer addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
    //[backgroundImage release];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

NSInteger ButtonPush = NO;
NSInteger SLeft = NO;
NSInteger SRight = NO;

- (void)updateDisplay{
    if(ButtonPush == YES){
    if(self.SLeft == 1){
        CGRect playerFrame = playerImage.frame;
        playerFrame.origin.x -= 5;
        if(playerFrame.origin.x < 0)
            playerFrame.origin.x = 0;
        [playerImage setFrame:playerFrame];
        
    }else if (self.SRight == 1){
        CGRect playerFrame = playerImage.frame;
        playerFrame.origin.x += 5;
        if(playerFrame.origin.x > 290)
            playerFrame.origin.x = 290;
        [playerImage setFrame:playerFrame];

    }
        if(self.SLeft == 2){
            CGRect playerFrame = playerImage.frame;
            playerFrame.origin.x -= 10;
            if(playerFrame.origin.x < 0)
                playerFrame.origin.x = 0;
            [playerImage setFrame:playerFrame];

            
        }else if (self.SRight == 2){
            CGRect playerFrame = playerImage.frame;
            playerFrame.origin.x += 10;
            if(playerFrame.origin.x > 290)
                playerFrame.origin.x = 290;
            [playerImage setFrame:playerFrame];
        }
  }
}

- (IBAction)shortMoveDown:(id)sender {
    UIButton *b = (UIButton *)sender;
    ButtonPush = YES;
    if(b.tag == 0){
        self.SLeft = 1;
    }else if (b.tag == 1){
        self.SRight = 1;
    }
}

- (IBAction)LongMoveDown:(id)sender {
    UIButton *b = (UIButton *)sender;
    ButtonPush = YES;
    if(b.tag == 3){
        self.SLeft = 2;
    }else if (b.tag == 4){
        self.SRight = 2;
    }

}

- (IBAction)ShortMove:(id)sender {
        ButtonPush = NO;
        self.SLeft = 0;
        self.SRight = 0;
}



- (IBAction)LongMove:(id)sender {
    ButtonPush = NO;
    self.SLeft = 0;
    self.SRight = 0;
}


@end
