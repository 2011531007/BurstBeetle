//
//  Chara.h
//  BurstBeetle
//
//  Created by 浦本　竜 on 13/12/12.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface Chara : NSObject{
    NSInteger image_w;  //画像の幅
    NSInteger image_h;  //画像の高さ
    UIImage* image;   //キャラの画像
}

@property NSInteger x;    //キャラのx座標
@property NSInteger y;    //キャラのy座標

- (id)initWithX:(NSInteger)aX Y:(NSInteger)aY width:(NSInteger)aWidth height:(NSInteger)aHeight image:(NSString *)aImage;

-(UIImageView *)Draw;
-(void)Move;

@end