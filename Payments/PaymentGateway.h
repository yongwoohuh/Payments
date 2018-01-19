//
//  PaymentGateway.h
//  Payments
//
//  Created by Yongwoo Huh on 1/19/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>
- (void)processPaymentAmount:(NSInteger)amount;
- (BOOL)canProcessPayment;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)amount;

@end
