//  ViewController.m
//  WCDBDemo
//
//  Created by  XMFraker on 2018/10/8
//  Copyright © XMFraker All rights reserved. (https://github.com/ws00801526)
//  @class      ViewController
//  @version    <#class version#>
//  @abstract   <#class description#>

#import "ViewController.h"

#import "User.h"

@interface ViewController ()
@property (strong, nonatomic) WCTDatabase *userDB;

@end

@implementation ViewController

#pragma mark - Override

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createDB];
    [self insertUser];
}

#pragma mark - Private

- (void)createDB {
    
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *path = [dir stringByAppendingPathComponent:@"user.db"];
    
    [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    
    self.userDB = [[WCTDatabase alloc] initWithPath:path];
    [self.userDB setCipherKey:[@"passwordOfDb" dataUsingEncoding:NSASCIIStringEncoding] andCipherPageSize:4096];
    
    BOOL succ = [self.userDB createTableAndIndexesOfName:NSStringFromClass([User class]) withClass:[User  class]];
    if (succ) { NSLog(@"create db success at path [%@]", self.userDB.path); }
    else { NSLog(@"create db failed"); }
}

- (void)insertUser {
    
    User *user = [[User alloc] init];
    user.name = @"Jhon";
    user.phone = @"13103029102";
    [self.userDB insertObject:user into:NSStringFromClass([User class])];
}

@end
