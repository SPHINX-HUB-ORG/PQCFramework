//Frameworks SPHINX Blockchain
//@website https://linktr.ee/sphinx.org
//@authors: C. Kusuma
//          
//          
//
//              +======================================================================================================================>>+
//              ^                                                                                                         | Public key   |
//              |                                                                                                         +--------------|
//              +============================================================>+                                                          |
//              ^                                             | Private key   |                                                          |
//              |                                             +---------------|                                                          v
//              |                                                             v                                                          v
//     +------------------+    +----------------+      +-------+      +-----------------+       +--------------------+         +----------------------+                                                   +---------------+
//     |Hybrid PQC + Curve|    |Transaction data| ==>> |Hashing| ==>> |Digital Signature|       |Transaction proposal|  ====>> |Transaction validation|  ============================================>>   | Pool of valid |
//     +------------------+    +----------------+      +-------+      +-----------------+       +--------------------+         +----------------------+                                                   +---------------+
//              ^                  |                   |  SHA3 |      |     SPHINCS+    |               ^                      |                      |                                                          |          
//              ^                  |                   |SWIFFTX|      |       DSA       |               ^                      |   Block Validation   |                                                          |          
//              |                  |                   +-------+      +-----------------+               |                      |----------------------|                                                          |           
//              |                  v                       v                                            |        +<<=========  |     Proof-of-Work    |                                                          v           
//              |                  v                       v                                            |        |             |      SPHINXHash      |                                                          v           
//              |                  +--------------------------------------------------------------------+        |             +----------------------+                                                 +-------------------+
//          +-------+              |                  | "WE DO NOT NEEDED YOUR SK" |                    |        |                        ^                                                             | Valid transaction |
//          | USERS |              |     Verifier     |----------------------------|      Prover        |        |                        ^                                                             +-------------------+
//          +-------+              |                  |          ZK-STARK          |                    |        |                        |                                                             | Valid transaction |
//                                 +--------------------------------------------------------------------+        |                        |                                                             +-------------------+
//                                                                                                               |                    +-------+                   +---------------------+               | Valid transaction |
//                                                                                                               |                    | Block | <<==============  | Merkle root hashing | <<==========  +-------------------+
//                                                                                                               |                    +-------+                   +---------------------+               | Valid transaction |
//                                                                                                               |                        ^                                  |
//                                                                                                               |                        ^                                  v
//                                                                                                               |                        ^                                  v                                  
//                                                                                                               |                        |                       +---------------------+    
//                                                                                                               |                        |                       |  Signature SPHINCS+ | 
//                                                                                                               |                        |                       |   Script input PK   |
//                                                                                                               |                        |                       +---------------------+ 
//                                                                                                               |                        |                                  |
//                                                                                                               |                        |                                  v
//                                                                                                               |                        |                                  v
//                    +==========================================================================================+                        |                       +---------------------+   
//                    |                                                                                                                   |                       |    Script output    |  
//                    |                                                                                                                   |                       |    SWIFFTX Hash     |                           
//                    |                                                                                                                   |                       +---------------------+                      
//                    |                                                                                                                   |                                           
//                    |                                                                                                                   |                                             
//                    |                                                                                                                   |                                                   
//                    |                                                                                                                   |                                             
//                    |                                                                                                                   |                                           
//                    |                                                                                                                   |                                            
//                    |                                              +==================================================================>>+                                                               
//                    |                                              ^
//                    |                                              ^
//                    |                                              |                                                                                                                                                  
//                    |                                              |                                                                                                                                                  
//                    |                                              |                                                                                                                                                  
//                    v                                              |                                                                                                                                                  
//                    v                                              |                                                                                                                                                  
//      +------------------------------+              +------------------------------+              +------------------------------+              +------------------------------+             +--------------------------------+
//      |         Block n2             |              |         Block  n+1           |              |         Block n              |              |         Block   1            |             |          Genesis Block         |
//      |------------------------------|              |------------------------------|              |------------------------------|              |------------------------------|             |--------------------------------|
//      |         |Version             |              |         |Version             |              |         |Version             |              |         |Version             |             |           |Version             |
//      |         |--------------------|              |         |--------------------|              |         |--------------------|              |         |--------------------|             |           |--------------------|
//      |         |Merkle root         |              |         |Merkle root         |              |         |Merkle root         |              |         |Merkle root         |             |           |Merkle root         |
//      |  HEADER |--------------------|              |  HEADER |--------------------|              |  HEADER |--------------------|              |  HEADER |--------------------|             | HEADER    |--------------------|
//      |         |Time stamp          |              |         |Time stamp          |              |         |Time stamp          |              |         |Time stamp          |             |           |Time stamp          |
//      |         |--------------------|              |         |--------------------|              |         |--------------------|              |         |--------------------|             |           |--------------------|
//      |         |Difficulty target   |              |         |Difficulty target   |              |         |Difficulty target   |              |         |Difficulty target   |             |           |Difficulty target   |
//      |         |--------------------|              |         |--------------------|              |         |--------------------|              |         |--------------------|             |           |--------------------|
//      |         |Nonce               |     SHA3     |         |Nonce               |     SHA3     |         |Nonce               |     SHA3     |         |Nonce               |    SHA3     |           |Nonce               |
//      |---------|--------------------|  SPHINXHash  |------------------------------|  SPHINXhash  |------------------------------|  SPHINXHash  |------------------------------|  SPHINXHash |--------------------------------|
//      |    Hash Prev. Hash           |  <<======>>  |    Hash Prev. Hash           |   <<=====>>  |    Hash Prev. Hash           |   <<=====>>  |    Hash Prev. Hash           |  <<=====>>  |         Hash of block 0        |
//      +------------------------------+              +------------------------------+              +------------------------------+              +------------------------------+             +--------------------------------+
// 
