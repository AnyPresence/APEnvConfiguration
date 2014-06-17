APEnvConfiguration
==================

Sits on top of [DBEnvironmentConfiguration](https://github.com/DavidBenko/DBEnvironmentConfiguration) for use with the [AnyPresence](http://anypresence.com) iOS SDK

There are 2 required keys in your `environments` file. 
- `base_url`
- `api_version`

###### Example JSON File
```json
{
    "Development": {
        "base_url": "https://dev.mycompany.com",
        "api_version": "5"
    },
    "Staging": {
        "base_url": "https://stage.mycompany.com",
        "api_version": "3"
    },
    "Production": {
        "base_url": "https://mycompany.com",
        "api_version": "3"
    }
}

```


Calling `setEnvironment` will take care of calling the following AP methods:

- APObject `+setBaseURL:`
- AuthManager `-setSignInURL:`
- AuthManager `-setSignOutURL:`
 
Additionally, **APEnvConfiguration** will provide you with a push-notification URL.
