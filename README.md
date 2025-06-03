# RSAKeyGenerator

Download Windows OpenSSL from the following URL:

https://slproweb.com/download/Win64OpenSSL-3_5_0.msi 

install to C:\Program Files\OpenSSL-Win64 and choose the binaries to be on bin directory.



Download the repository and extract to C:\ 

The Files will be available on: 
C:\RSAKeyGenerator-main


Run Windows PowerShell ISE as Administrator 

Open script file ExecuteGenerate-RSAKeys.ps1 

Replace Parameter values (BillerCode, BillerName, Environment "Test or Prod" and OpenSSL Installation Path)

Run the Script 

If you encounter an error "not digitally signed. You cannot run this script on the current system. For more information about running scripts and setting execution policy"
Execute the following command:

 Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass 
 or 
 Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

after that rerun the script 

2 files should be generated and saved to the main driectory (RSA Public and Private Keys)




