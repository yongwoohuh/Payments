//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Yongwoo Huh on 1/19/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount
{
    NSLog(@"Paypal processed %ld", amount);
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
