//
//  main.m
//  Payments
//
//  Created by Yongwoo Huh on 1/19/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePayPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger randomDollarValue = arc4random_uniform(901) + 100;
        PaypalPaymentService *payPal = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        ApplePayPaymentService *applePay = [[ApplePayPaymentService alloc] init];
        
        NSLog(@"Thank you for shopping at Acme.");
        NSLog(@"Your total today is $%ld.", randomDollarValue);
        NSLog(@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: ApplePay");
        NSString *userInput = [InputHandler getUserInput];
        
        switch ([userInput integerValue]) {
            case 1:
                paymentGateway.paymentDelegate = payPal;
                break;
            case 2:
                paymentGateway.paymentDelegate = stripe;
                break;
            case 3:
                paymentGateway.paymentDelegate = amazon;
                break;
            case 4:
                paymentGateway.paymentDelegate = applePay;
                break;
            default:
                NSLog(@"invaild input.");
                return 1;
        }
        [paymentGateway processPaymentAmount:randomDollarValue];
    }
    return 0;
}
