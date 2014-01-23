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

    player = [[Chara alloc]initWithX:150 Y:300 width:30 height:50 image:@"Beetle.jpg"];
    UIImageView *playerImage = [player Draw];
    [self.view addSubview:playerImage];
    
    timer = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateDisplay)];
    [timer addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
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
        player.x -= 10;
        UIImageView *playerImage = [player Draw];
        [self.view addSubview:playerImage];

    }else if (self.SRight == 1){
        player.x += 10;

    }
    //    self.SLeft = 0;
    //    self.SRight = 0;
  }
}
- (IBAction)ShortMove:(id)sender {
    UIButton *b = (UIButton *)sender;
    ButtonPush = YES;    
    if(b.tag == 0){
        self.SLeft = 1;
    }else if (b.tag == 1){
        self.SRight = 1;
    }

}



- (IBAction)LongMove:(id)sender {
    UIButton *b = (UIButton *)sender;
    if(b.tag == 0){
        player.x -= 30;

    }else if (b.tag == 1){
        player.x += 30;
    }
    UIImageView *playerImage = [player Draw];
    [self.view addSubview:playerImage];
}


@end
