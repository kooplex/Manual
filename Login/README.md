Login informations
====================

**EduID**, **ELTE neptun**, **ELTE caesar**, **Kooplex user**

## Login page
![Login](/img/login-button.png)

After you hit the *Login* button you will be redirected to a page, where you can select from multiple identity providers:

![Login Hydra](/img/login-hydra.png)

* EduID - Academic and educational institutes provide credentials through EduID. This is a convenient way to integrate platforms into already used environments.
* ELTE Neptun or Caesar - On the educational platform some of the methods are disabled, signing in is possible only with ELTE neptun and caesar accounts.
* Kooplex User - A visitor without any external account (e.g. EduID) can register an account, which needs an administrators approval.

After selecting your identity, you have to consent to provide the listed details to Kooplex from your identity provider.

![Login Consent](/img/login-consent.png)

Some features are (or will be) available without signing in, such as course materials and reports. 


### For developers

The authentication layer that we use in kooplex is the Ory Hydra, which uses ?oidc? protocol. IT is fairly simple to use google, github or any other popular services to provide identities.
