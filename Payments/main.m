//
//  main.m
//  Payments
//
//  Created by Yongwoo Huh on 1/19/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger randomDollarValue = arc4random_uniform(901) + 100;
        
        
        NSLog(@"Thank you for shopping at Acme.");
        NSLog(@"Your total today is $%ld.", randomDollarValue);
        NSLog(@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        NSString *userInput = [InputHandler getUserInput];
        NSLog(@"The user input is : %@", userInput);
        
        
    }
    return 0;
}
