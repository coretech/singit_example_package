# singit_idt_example_app

In this example,
SingIt package is called from the IDT app with the `launchSingIt` method, which accepts the config `SingItPackage` and `BuildContext` to navigate to the starting screen of SingIt. Of course the starting screen can vary based on `UserInfo` from `SingItPackage` config. 

Hard requirements from IDT's side is that the contract between our app and the package is according to this example's `SingItPackage`. The actual implementation such as state management is up to the SingIt team. 