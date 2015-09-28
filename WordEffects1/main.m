//
//  main.m
//  WordEffects1
//
//  Created by Yazan Khayyat on 2015-09-28.
//  Copyright © 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
            // 255 unit long array of characters
            char inputCharacters[255];
            char inputNumber;
            
            
            NSLog(@"Please pick a number between 1 and 6");
            fgets(&inputNumber, 255, stdin);
            
            NSLog(@"Your input was %c", inputNumber);
            
            
            NSLog(@"Input a string: ");
            
            fgets(inputCharacters, 255, stdin);
            
            NSString *inputString = [NSString stringWithUTF8String:inputCharacters];
            NSString *lastCharacter = [inputString substringFromIndex:[inputString length] - 2];


//            if ([inputString hasSuffix:@"\n"]) {
//                inputString = [inputString substringFromIndex:[inputString length] - 1];
//            }
//            
//            
            
            NSLog(@"Input was: %@", inputString);
            
            
            if (inputNumber == '1') {
                inputString = [inputString uppercaseString];
                NSLog(@"%@", inputString);
            }
            
            if (inputNumber == '2') {
                inputString = [inputString lowercaseString];
                NSLog(@"%@", inputString);
            }
        
            if (inputNumber == '3') {
            
               NSLog(@"%@ eh?", inputString);
            }
            
            if (inputNumber == '4') {
                
                if ([lastCharacter isEqualToString:@"?\n"]) {
                    NSLog(@"I dont know");
                    
                }
                else if ([lastCharacter isEqualToString:@"!\n"]) {
                    NSLog(@"Whoa, Calm Down!");
                }
                else {
                    NSLog(@"Didn't do anything");
                }
            }
            
            if (inputNumber == '5') {
                NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            }
            
            if (inputNumber == '6') {
                [inputString intValue];
                
            }
        }
        
        
        
    }
    
    return 0;
}
