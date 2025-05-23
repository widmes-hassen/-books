::  /sur/books
::
|%
::
+$  page
  $%  [%change-zapper-creds uid=@t pw=@t]
      [%etherscan-key key=@t]
      [%add-transaction =transaction]
      [%add-wallet address=@ux nick=@t tags=(set @tas)]
      [%del-wallet address=@ux]
      [%add-friend address=@ux =wallet]
      [%del-friend address=@ux]
      [%annotation hash=@ux note=annotation]
      [%del-a-note hash=@ux]
      [%set-tags address=@ux tags=(set @tas)]
      [%set-patp address=@ux who=(unit @p)]
      [%set-nick address=@ux nick=@t]
  ==
::
::
::
+$  direction
  $?  %incoming
      %outgoing
      %exchange
    ==
::
+$  subtrans
  $:  type=direction
      symbol=@t
      amount=@rd
      address=(unit @ux)
  ==
::
::
+$  annotation
  $:  basis=@rd
      to=(unit @ux)
      annotation=@t
      tags=(set @tas)
  ==
::
+$  wallet
  $:  nick=@t
      who=(unit @p)
      tags=(set @tas)
  ==
::
+$  wallet-state
  $:  walletaddress=@ux
      balance=@ud
  ==
::
+$  transaction
  $:  primarywallet=@ux
      =network
      hash=@ux
      blocknumber=@ud
      name=@t
      =direction
      timestamp=@da
      symbol=@t
      address=(unit @ux)
      amount=@rd
      from=@ux
      destination=@ux
      contract=(unit @ux)
      subtransactions=(set subtrans)
      nonce=@ud
      txgas=(unit @rd)
      txgaslimit=(unit @rd)
      input=(unit @t)
      fee=@rd
      txsuccessful=?
  ==
  +$  nft-trans
    $:  hash=@t
        from=@t
        to=@t
        tokenid=@t
        tokenname=@t
        tokensymbol=@t
        gas=@t
  ==
   +$  trans
    $:  hash=@t
        from=@t
        to=@t
        value=@t
        gas=@t
        gasused=@t
  ==
--