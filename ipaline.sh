#! /bin/bash

printf "\033c";

echo "Please enter the name of your iOS App (Do NOT include .ipa)";read nameofApp;
echo "Enter the path to your .app file";read filepath;
echo "Enter the path that you would like save your IPA in";read pathToSave;

cd "$pathToSave";
mkdir IPAgeneratorParent;
cd IPAgeneratorParent;
mkdir Payload;
cp -R "$filepath" Payload/;
zip -r Payload.zip Payload/;
mv Payload.zip $nameofApp.ipa;
mv $nameofApp.ipa "$pathToSave";
cd $pathToSave;
rm -rf "IPAgeneratorParent";


printf "\033c";

echo "Your file has been saved in $pathToSave, and is called '$nameofApp.ipa'";
