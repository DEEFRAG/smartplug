.class Lcom/kankunit/smartplugcronus/service/MessageService$2;
.super Ljava/lang/Thread;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/MessageService;->doLogin(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->val$fMac:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 201
    :try_start_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$1(Lcom/kankunit/smartplugcronus/service/MessageService;Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V

    .line 202
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$2(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->conServer()Z

    .line 203
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$2(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->val$fMac:Ljava/lang/String;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->val$fMac:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 204
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 205
    const/4 v6, 0x1

    sput-boolean v6, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 206
    sget-object v6, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v1

    .line 207
    .local v1, "cm":Lorg/jivesoftware/smack/ChatManager;
    new-instance v6, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v6, v7}, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;)V

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 210
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    .line 211
    const-string v7, "initInfo"

    const-string v8, "isFriendInit"

    .line 210
    invoke-static {v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "isFriendInit":Ljava/lang/String;
    const-string v6, "yes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 213
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    .line 214
    const-string v7, "initInfo"

    const-string v8, "isFriendInit"

    const-string v9, "yes"

    .line 213
    invoke-static {v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v6, ":"

    const-string v7, "-"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%mac%nopassword%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%xx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 219
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "ssString":Ljava/lang/String;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    const-string v8, "~~~~~~~~~~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v6

    .line 225
    const-string v7, "xx@clearFriends.kankun-smartplug.com"

    .line 227
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 224
    invoke-virtual {v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    .end local v1    # "cm":Lorg/jivesoftware/smack/ChatManager;
    .end local v3    # "isFriendInit":Ljava/lang/String;
    .end local v4    # "phoneMac":Ljava/lang/String;
    .end local v5    # "ssString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "b":Z
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    sput-boolean v6, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 237
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$1(Lcom/kankunit/smartplugcronus/service/MessageService;Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V

    .line 238
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$2(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->conServer()Z

    .line 239
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$2(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->val$fMac:Ljava/lang/String;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->val$fMac:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 240
    .restart local v0    # "b":Z
    if-eqz v0, :cond_0

    .line 241
    sput-boolean v10, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .line 242
    sget-object v6, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v1

    .line 243
    .restart local v1    # "cm":Lorg/jivesoftware/smack/ChatManager;
    new-instance v6, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v6, v7}, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;)V

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 246
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    .line 247
    const-string v7, "initInfo"

    const-string v8, "isFriendInit"

    .line 246
    invoke-static {v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3    # "isFriendInit":Ljava/lang/String;
    const-string v6, "yes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 249
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    .line 250
    const-string v7, "initInfo"

    const-string v8, "isFriendInit"

    const-string v9, "yes"

    .line 249
    invoke-static {v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .restart local v4    # "phoneMac":Ljava/lang/String;
    const-string v6, ":"

    const-string v7, "-"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%mac%nopassword%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%xx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 255
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5    # "ssString":Ljava/lang/String;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v8, "~~~~~~~~~~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/MessageService$2;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v6

    .line 261
    const-string v7, "xx@clearFriends.kankun-smartplug.com"

    .line 263
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-virtual {v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
