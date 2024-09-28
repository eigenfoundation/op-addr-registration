## Operator Registation:

-   **Ops**: 
    - We verify registations via a python script to make sure registations are from qualified operators.
    - To register, an operator should send a transaction from their operator key with their prefered wallet and include the verbage below.
    - `I agree to have my operator EIGEN allocation be claimed from the registered wallet in this transaction.`
    - If you register more than once, the latest registration before the cutoff time period will be considered.
    - The registered wallet should be able to connect to the claims webapp, sign a message and send a transaction.
-   **Operator Registration**: 
    - Operators must send a transaction using their operator key and the following parameters to `0x8bB56D1CBA6273478E9B4D79F89857ac8D766eb3`.
        - `registeredWallet` - the wallet address that will later be used to claim EIGEN tokens via the Claims webapp at [eigenfoundation.org](https://eigenfoundation.org/).
        - `operatorMessage` - `I agree to have my operator EIGEN allocation be claimed from the registered wallet in this transaction.`
        - example tx using foundry `cast send 0x8bB56D1CBA6273478E9B4D79F89857ac8D766eb3 "Register(address,string)" 0x..........registeredWallet "I agree to have my operator EIGEN allocation be claimed from the registered wallet in this transaction." --private-key ***operatorKey*** --rpc-url https://yor-rpc-url.here`
    - The `registeredWallet` address will later be used with the Claims webapp to claim your allocation via its set of supported browser wallet integrations.
