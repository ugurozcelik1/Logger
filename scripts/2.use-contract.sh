#!/usr/bin/env bash

# exit on first error after this point to avoid redeploying with successful build
set -e

echo
echo ---------------------------------------------------------
echo "Step 0: Check for environment variable with contract name and account id"
echo ---------------------------------------------------------
echo

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$CONTRACT" ] || echo "Found it! \$CONTRACT is set to [ $CONTRACT ]"

echo
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 2
[ -z "$OWNER" ] || echo "Found it! \$OWNER is set to [ $OWNER ]"
echo
echo ---------------------------------------------------------
echo "Step 1: Call 'change' functions on the contract"
echo ---------------------------------------------------------
echo

near call $CONTRACT newLog '{"activity":"Enter"}' --accountId $OWNER

echo
echo

near call $CONTRACT newLog '{"activity":"Exit"}' --accountId $OWNER

echo
echo
echo ---------------------------------------------------------
echo "Step 2: Call 'view' functions on the contract"
echo ---------------------------------------------------------
echo

near view $CONTRACT get
echo
exit 0
