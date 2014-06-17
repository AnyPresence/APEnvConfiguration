//
//  APEnvConfiguration.h
//  LoyaltyRtr
//
//  Created by David Benko on 6/17/14.
//  Copyright (c) 2014 David Benko. All rights reserved.
//

#import <DBEnvironmentConfiguration/DBEnvironmentConfiguration.h>

@interface APEnvConfiguration : DBEnvironmentConfiguration
/**
 * Sets environment to read values from.
 * Can also be done by defining BUILD_ENVIRONMENT
 *
 * @param environment The name of the environment as it appears in the file
 *
 */
+ (void)setEnvironment:(NSString *)environment;

/**
 * Sets file to read values from.
 * Defaults to environments.json
 *
 * @param resource The name of the file without the extension
 * @param type The extension of the file
 *
 */
+ (void)setConfigurationResource:(NSString *)resource ofType:(NSString *)type;

/**
 * Provides url for push notification subscription
 *
 * @return url for push notification subscription
 *
 */
+ (NSURL *)pushNotificationURL;
 
@end
