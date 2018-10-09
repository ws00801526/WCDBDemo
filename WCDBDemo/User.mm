//  User.m
//  WCDBDemo
//
//  Created by  XMFraker on 2018/10/9
//  Copyright © XMFraker All rights reserved. (https://github.com/ws00801526)
//  @class      User
//  @version    <#class version#>
//  @abstract   <#class description#>

#import "User.h"

@implementation User

WCDB_IMPLEMENTATION(User)
WCDB_SYNTHESIZE(User, dbID)
WCDB_SYNTHESIZE(User, name)
WCDB_SYNTHESIZE(User, phone)
WCDB_SYNTHESIZE(User, avatar)

WCDB_PRIMARY(User, dbID)

@end
