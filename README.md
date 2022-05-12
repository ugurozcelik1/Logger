# Login

The project stores the login information on the blockchain and gives it to the user.
---


## Deploy

Login your testnet account:


    near login


Clone:

    git clone https://github.com/ugurozcelik1/Login.git


Install dependencies:

     yarn


Build and Deploy:

    yarn dev


Let's assign a variable to contract id.     

    export CONTRACT=<your dev-id>



## Let's call the method that will get the login information



``` 
near call $CONTRACT newLog '{"activity":"Enter"}' --accountId <your-account-Id> 
```

``` 
near call $CONTRACT newLog '{"activity":"Exit"}' --accountId <your-account-Id>
```



## Now let's view login information we have stored on the blockchain


    near view $CONTRACT get



Or view only one account:

    near view $CONTRACT getByOwner



