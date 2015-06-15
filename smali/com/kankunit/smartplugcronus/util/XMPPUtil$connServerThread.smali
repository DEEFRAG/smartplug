.class Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;
.super Ljava/lang/Thread;
.source "XMPPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/XMPPUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "connServerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;->this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 102
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    const-string v2, "kankun-smartplug.com"

    const/16 v3, 0x1466

    invoke-direct {v0, v2, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v0, "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 109
    :try_start_0
    new-instance v2, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    sput-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 110
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    .line 111
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;->this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;->this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->access$0(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;->this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->access$0(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->login(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    const/4 v2, 0x1

    sput-boolean v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException;
    sput-boolean v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 115
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
