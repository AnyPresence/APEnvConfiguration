//
//  APEnvConfiguration.m
//  LoyaltyRtr
//
//  Created by David Benko on 6/17/14.
//  Copyright (c) 2014 David Benko. All rights reserved.
//

#import "APEnvConfiguration.h"
#import <APSDK/APObject+Remote.h>
#import <APSDK/AuthManager.h>
#import <APSDK/AuthManager+Protected.h>

@implementation APEnvConfiguration

+ (void)initialize
{
	[super initialize];
    setAPConfig();
    setAuthConfig();
}

+ (void)setEnvironment:(NSString *)environment{
    [super setEnvironment:environment];
    setAPConfig();
    setAuthConfig();
}

+ (void)setEnvironmentDetection:(BOOL)envDetect{
	[super setEnvironmentDetection:envDetect];
    setAPConfig();
    setAuthConfig();
}

+ (void)setEnvironmentMapping:(NSDictionary *)mapping{
	[super setEnvironmentMapping:mapping];
    setAPConfig();
    setAuthConfig();
}

+ (void)setEnvironment:(NSString *)environment forBuildType:(DBBuildType)buildType{
	[super setEnvironment:environment forBuildType:buildType];
    setAPConfig();
    setAuthConfig();
}

+ (void)setConfigurationResource:(NSString *)resource ofType:(NSString *)type{
    [super setConfigurationResource:resource ofType:type];
    setAPConfig();
    setAuthConfig();
}

+ (NSURL *)pushNotificationURL{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@/api/push_notification_extension/subscribe",[APEnvConfiguration valueForKey:@"base_url"]]];
}

void setAPConfig(){
    [APObject setBaseURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/api/%@/",[APEnvConfiguration valueForKey:@"base_url"],[APEnvConfiguration valueForKey:@"api_version"]]]];
}

void setAuthConfig(){
    AuthManager * auth = [AuthManager new];
    auth.signInURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/auth/password/callback",[APEnvConfiguration valueForKey:@"base_url"]]];
    auth.signOutURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/auth/signout",[APEnvConfiguration valueForKey:@"base_url"]]];
    auth.persistsCurrentCredentials = YES;
    
    [AuthManager setDefaultManager:auth];
}
@end
