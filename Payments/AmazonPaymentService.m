//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Yongwoo Huh on 1/19/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount
{
    NSLog(@"Amazon processed %ld", amount);
}
- (BOOL)canProcessPayment
{
    NSInteger canProcess = arc4random_uniform(2);
    if (canProcess) {
        return YES;
    }
    return NO;
}
@end
