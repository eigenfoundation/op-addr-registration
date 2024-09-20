## opReg


Operators Registation:

-   **Assumptions**: 
    - We verify registations via a python script to make sure registations are from qualified operators.
    - To register via smartcontract, an operator should send their prefered wallet and include the verbage that will be shared.
-   **dev**: run `forge test -vvvv` to verify registration ops
-   **operator reg*** : `cast send 0x... "register((address,string memory)" "(0x...,"I agree to have my operator...")" --rpc-url https://your-url --private-key your-operator-private-key`