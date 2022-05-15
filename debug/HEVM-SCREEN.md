──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
────────────────────────────────────VMFailure: 0x──────────────────────────────────────────────────────────────Gas available: 962,770; stack:──────────────────────────
3a6 RETURNDATASIZE                                                                  #1 0x0                                                                             
3a7 PUSH 0x0                                                                           0                                                                               
3a9 DUP1                                                                            #2 0x0                                                                             
3aa RETURNDATACOPY                                                                     0                                                                               
3ab DUP1                                                                            #3 0x0                                                                             
3ac PUSH 0x3b4000000000000000000000000000000000000000000000000000000000000             0                                                                               
3af JUMPI                                                                           #4 0x2ad1fb77c64cbbdeec4e4e974370bb39a199f505                                      
3b0 RETURNDATASIZE                                                                     244460374062050263867001543157297436216216122629                                
3b1 PUSH 0x0                                                                        #5 0x60                                                                            
3b3 REVERT                                                                             96                                                                              
3b4 JUMPDEST                                                                        #6 0x1                                                                             
3b5 POP                                                                                1                                                                               
3b6 RETURNDATASIZE                                                                  #7 0x4828699dcbe7d449ce209af47ed285eba9a555a9                                      
3b7 PUSH 0x0                                                                           411948565792649121520629081672718747533031331241                                
3b9 RETURN                                                                          #8 0x62                                                                            
3ba JUMPDEST                                                                           98                                                                              
3bb PUSH 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103         #9 0xb1a1a88200000000000000000000000000000000000000000000000000000000 >> 0xe0      
3dc SLOAD                                                                              2980161666                                                                      
3dd PUSH 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000                                                                                            
───────────────────────────────────<no source map>─────────────────────────────────────────────────────────────────────────Trace───────────────────────────────────────
                                                                                    call 0x4828699dCbe7D449cE209af47Ed285EbA9A555a9::0xb7947262 <no source map>        
                                                                                     └╴← 0x                                                                            
                                                                                    delegatecall 0x2AD1FB77C64cbbDEEC4e4e974370BB39A199F505::0xb1a1a8820000000000000000
                                                                                     ├╴call 0x3A6B068890245538c94701eEDdEFc4F8A43bb202::0x3dbb202b000000000000000000000
                                                                                     │  ├╴call 0xE2eaBc78232429D81eb319bB3e93abe14B8a4726::0xbf40fac1000000000000000000
                                                                                     │  │  └╴← 0x000000000000000000000000efa9802e007496fb797afc455341fed0fc0287fb      
                                                                                     │  ├╴delegatecall 0xEfA9802e007496fB797AFc455341Fed0fC0287fB::0x3dbb202b0000000000
                                                                                     │  │  └╴error Revert 0x <no source map>                                  ...      
                                                                                     │  └╴error Revert 0x <no source map>                                     ...      
                                                                                     └╴error Revert 0x <no source map>                                                 
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       

