//
//  AddressCard.m
//  AddressBookProblem
//
//  Created by davidBear on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize email, name;
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void) print{
    NSLog (@"====================================");
    NSLog (@"|                                   |");
    NSLog (@"| %-31s   |", [name UTF8String]);
    NSLog (@"| %-31s   |", [email UTF8String]);
    NSLog (@"|                                   |");
    NSLog (@"|                                   |");
    NSLog (@"|                                   |");
    NSLog (@"| O                               O |");
    NSLog (@"====================================");
    /*
     The %-31s characters to NSLog indicate to display a UTF8 C-string within a field width of 31 characters, left-justified
     */
}

-(void) dealloc{
    [name release];
    [email release];
    [super dealloc];
}

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail{
    self.name = theName;
    self.email = theEmail;
}

- (NSComparisonResult) compareNames: (id) element{
    return [name compare: [element name]]; // assending order 
    //return -[name compare: [element name]]; //dessending order
}

@end
























