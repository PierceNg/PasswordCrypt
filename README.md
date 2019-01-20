# PasswordCrypt

PasswordCrypt is a library for Pharo Smalltalk to handle passwords salted and
hashed by SHA-256/SHA-512. Its primary components are PCPasswordCrypt,
PCAuthenticator and PCBasicAuthenticator.

## PCPasswordCrypt

At its core, PCPasswordCrypt provides the following class-side messages:

- ```sha512crypt:withSalt:```
- ```sha256crypt:withSalt:```

An example:

    PCPasswordCrypt sha256crypt: 'secret' withSalt: 'andPepperToo'
    "'$5$andPepperToo$5p0MWgRMT6l6EA6dYDlFhuQKi.tfCXNd35T99HxbsTD'"

The result is a string in modular crypt format (MFC). ```$5``` on the left of the
string indicates that the hashing algorithm is SHA-256. For SHA-512, the
indicator is ```$6```.

On the instance side, PCPasswordCrypt generates the salt randomly if one is not
supplied:

    PCPasswordCrypt new sha256crypt: 'secret'
    "'$5$5bUAI5i2$iIdIXcQGhZfNF0HQFG592Ut1I6UtuO/smBPJkKBrRzC'"


## PCAuthenticator

PCAuthenticator builds on PCPasswordCrypt to provide username/password
management. PCAuthenticator operates as a singleton object to persist its data
in the Pharo image across restarts.

Example usage:

    | appName auth newUser userToValidate |
    
    appName := 'myApp'.

    "Initialize the authenticator for my application."
    auth := PCAuthenticator uniqueInstance.
    auth initializeDatabaseFor: appName.

    "Add a user."
    newUser := PCUserCredential
      appname: appName;
      username: 'testuser';
      password: 'secret';
      yourself.
    auth insertUserCredential: newUser.
    
    "Create another user object and validate its password."
    userToValidate := PCUserCredential
      appname: appName;
      username: 'testuser';
      password: 'secret';
      yourself.
    auth validateUserCredential: userToValidate
    "If the passwords match, userToValidate is returned; otherwise, nil is returned."

PCAuthenticatorUI is a simple Spec-based user interface to upsert new
usernames/passwords into PCAuthenticator. I wrote it because I simply abhor
code snippets containing clear-text passwords, except for demonstration as
above. To run PCAuthenticatorUI:

    PCAuthenticatorUI new openWithSpec

## PCBasicAuthenticator

PCBasicAuthenticator subclasses ZnBasicAuthenticator, the HTTP basic
authentication handler in ZincHTTPComponents. It uses PCAuthenticator so that 

- usernames and passwords are persistent,
- it is feasible to use PCAuthenticatorUI for a small number of users, such
  as during development and testing.

## Installation

To install the Pharo code:

    Metacello new
      baseline: 'PasswordCrypt';
      repository: 'github://PierceNg/PasswordCrypt/src-st';
      load.

PCPasswordCrypt is an FFI to the C library ```libshacrypt```, built from the
source files ```shacrypt256.c``` and ```shacrypt512.c``` in the directory
```src-c```. To build the C library:

    % cd src-c
    % make

The generated shared library is ```libshacrypt.so``` on Linux and
```libshacrypt.dylib``` on OSX/macOS. It must be placed where the Pharo VM can
find it at run time. My practice is to place the shared library file together
with the Pharo VM's plugins. On macOS, suppose Pharo is installed in
```/Users/pierce/Pharo.app```, then ```libshacrypt.dylib``` goes into
```/Users/pierce/Pharo.app/Contents/MacOS/Plugins/```.

## Possible Future Work

- Store/retrieve usernames/passwords in ```htpasswd``` files.

## References

- [My 2013 blog post.](https://www.samadhiweb.com/blog/2013.11.17.shacrypt.html)
- Ulrich Depper's [sha-crypt](http://www.akkadia.org/drepper/sha-crypt.html) web page.

## Licenses

- MIT license for PasswordCrypt
- ```sha256crypt.c``` and ```sha512crypt.c``` are public domain

