.class Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;
.super Landroid/os/Handler;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageServiceHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/MessageService;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/service/MessageService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->context:Landroid/content/Context;

    .line 323
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, "mac":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/service/MessageService;->doLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v1    # "mac":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    .line 336
    .local v0, "cm":Lorg/jivesoftware/smack/ChatManager;
    new-instance v2, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/MessageService$MessageServiceHandler;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v2, v3}, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
