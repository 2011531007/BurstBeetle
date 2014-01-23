//
//  Chara.m
//  BurstBeetle
//
//  Created by 浦本　竜 on 13/12/12.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "Chara.h"

@implementation Chara

- (id)initWithX:(NSInteger)aX Y:(NSInteger)aY width:(NSInteger)aWidth height:(NSInteger)aHeight image:(NSString *)aImage;{
    self = [super init];
    _x = aX;
    _y = aY;
    image_w = aWidth;
    image_h = aHeight;
    image = [UIImage imageNamed:aImage];
    return self;
}

-(UIImageView *)Draw{
    CGRect rect = CGRectMake(_x, _y, image_w, image_h);
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = rect;
    return imageView;
}

-(void)Move{

};

@end
