//
//  AddressCard.h
//  AddressBookProblem
//
//  Created by davidBear on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *name;
    NSString *email;
}
@property (copy, nonatomic) NSString *name, *email;

- (void) print;
- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (NSComparisonResult) compareNames: (id) element;


//override method
-(void) dealloc;

@end
