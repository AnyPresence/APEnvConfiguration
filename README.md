APEnvConfiguration
==================

Sits on top of [DBEnvironmentConfiguration](https://github.com/DavidBenko/DBEnvironmentConfiguration) for use with the [AnyPresence](http://anypresence.com) iOS SDK

### Installation

##### Via CocoaPods
- Add `pod 'APEnvConfiguration', :git => 'https://github.com/AnyPresence/APEnvConfiguration.git'` to your podfile
- Run `pod install`
- Import header (`#import <APEnvConfiguration/APEnvConfiguration.h>`)
- Link pod against `APSDK.framework`

![alt tag](https://github.com/AnyPresence/APEnvConfiguration/raw/master/linking.png)
 
##### Manual Installation
- Add **DBEnvironmentConfiguration** class
- Add `APEnvConfiguration` folder to your project
- Import header (`#import "APEnvConfiguration"`)

There are 2 required keys in your `environments` file. 
- `base_url`
- `api_version`

###### Example JSON File
```json
{
    "Development": {
        "base_url": "https://dev.mycompany.com",
        "api_version": "v5"
    },
    "Staging": {
        "base_url": "https://stage.mycompany.com",
        "api_version": "v3"
    },
    "Production": {
        "base_url": "https://mycompany.com",
        "api_version": "v3"
    }
}

```


Calling `setEnvironment` will take care of calling the following AP methods:

- APObject `+setBaseURL:`
- AuthManager `-setSignInURL:`
- AuthManager `-setSignOutURL:`
 
Additionally, **APEnvConfiguration** will provide you with a push-notification URL.
