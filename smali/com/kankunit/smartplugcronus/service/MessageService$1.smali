.class Lcom/kankunit/smartplugcronus/service/MessageService$1;
.super Ljava/lang/Thread;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/MessageService;->registerMac(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

.field private final synthetic val$fMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/MessageService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->val$fMac:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 150
    :try_start_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    const-string v8, "MessageService"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/kankunit/smartplugcronus/service/MessageService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 151
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "isFirst"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    new-instance v2, Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 153
    const-string v7, "kankun-smartplug.com"

    const/16 v8, 0x1466

    .line 152
    invoke-direct {v2, v7, v8}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 154
    .local v2, "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    new-instance v3, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 155
    .local v3, "connection":Lorg/jivesoftware/smack/Connection;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->connect()V

    .line 157
    new-instance v0, Lorg/jivesoftware/smack/AccountManager;

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/AccountManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .local v0, "amgr":Lorg/jivesoftware/smack/AccountManager;
    :try_start_1
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->val$fMac:Ljava/lang/String;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->val$fMac:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/jivesoftware/smack/AccountManager;->createAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "isFirst"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveDevice:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->val$fMac:Ljava/lang/String;

    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cmd":Ljava/lang/String;
    new-instance v7, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v8, Lcom/kankunit/smartplugcronus/service/MessageService$1$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/service/MessageService$1$1;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService$1;)V

    .line 166
    new-instance v9, Lcom/kankunit/smartplugcronus/service/MessageService$1$2;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/service/MessageService$1$2;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService$1;)V

    .line 170
    const/4 v10, 0x1

    .line 162
    invoke-direct {v7, v8, v9, v10}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V

    invoke-static {v7, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    .end local v0    # "amgr":Lorg/jivesoftware/smack/AccountManager;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    .end local v3    # "connection":Lorg/jivesoftware/smack/Connection;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 177
    .local v5, "msg":Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 178
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->val$fMac:Ljava/lang/String;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->handler:Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$0(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 171
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v0    # "amgr":Lorg/jivesoftware/smack/AccountManager;
    .restart local v2    # "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    .restart local v3    # "connection":Lorg/jivesoftware/smack/Connection;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 172
    .local v4, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    sput-boolean v7, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 173
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 180
    .end local v0    # "amgr":Lorg/jivesoftware/smack/AccountManager;
    .end local v2    # "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    .end local v3    # "connection":Lorg/jivesoftware/smack/Connection;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    .line 181
    .restart local v4    # "e":Ljava/lang/Exception;
    sput-boolean v11, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 182
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 184
    .restart local v5    # "msg":Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->arg1:I

    .line 185
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->val$fMac:Ljava/lang/String;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->handler:Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$0(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
