//
//  PaymentGateway.m
//  Payments
//
//  Created by Yongwoo Huh on 1/19/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)amount
{
    if([self.paymentDelegate canProcessPayment])
    {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"sorry the payment can't be processed. Try again soon.");
    }
}
@end
