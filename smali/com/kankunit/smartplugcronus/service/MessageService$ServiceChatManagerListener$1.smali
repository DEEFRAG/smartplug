.class Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener$1;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lorg/jivesoftware/smack/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener$1;->this$1:Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 6
    .param p1, "arg0"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "msg"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 286
    :try_start_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener$1;->this$1:Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->access$0(Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;)Lcom/kankunit/smartplugcronus/service/MessageService;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService;->handler:Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/MessageService;->access$0(Lcom/kankunit/smartplugcronus/service/MessageService;)Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 287
    .local v2, "m":Landroid/os/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \n from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    const/4 v4, 0x6

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 289
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 290
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "msgBody":Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    if-nez v3, :cond_0

    .line 312
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "msgBody":Ljava/lang/String;
    :goto_0
    return-void

    .line 302
    .restart local v2    # "m":Landroid/os/Message;
    .restart local v3    # "msgBody":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "msgBody"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v4, "ikonke.basebroadcast"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener$1;->this$1:Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;

    # getter for: Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->access$0(Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;)Lcom/kankunit/smartplugcronus/service/MessageService;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/kankunit/smartplugcronus/service/MessageService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "msgBody":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
