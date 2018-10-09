//  User.h
//  WCDBDemo
//
//  Created by  XMFraker on 2018/10/9
//  Copyright © XMFraker All rights reserved. (https://github.com/ws00801526)
//  @class      User
//  @version    <#class version#>
//  @abstract   <#class description#>

#import <WCDB/WCDB.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject 

@property (assign, nonatomic) NSInteger dbID;
@property (copy, nonatomic)   NSString *name;
@property (copy, nonatomic)   NSString *phone;
@property (copy, nonatomic)   NSString *avatar;

@end

@interface User (WCDB) <WCTTableCoding>

WCDB_PROPERTY(dbID)
WCDB_PROPERTY(name)
WCDB_PROPERTY(phone)
WCDB_PROPERTY(avatar)

@end

NS_ASSUME_NONNULL_END
