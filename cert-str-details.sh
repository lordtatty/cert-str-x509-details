#!/bin/bash
CERT=$1
if [ -z "$CERT" ]
then
      echo "Error: String of cert should be the first parameter"
      exit -1
fi
export FOLDED_CERT=$(fold -w 64 <(echo $CERT))
export CERTPEM="-----BEGIN CERTIFICATE-----\n$FOLDED_CERT\n-----END CERTIFICATE-----"
openssl x509 -in <(echo $CERTPEM) -text
