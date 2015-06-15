.class Lcom/avos/avoscloud/AVSession$1;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$200(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/MessageManager;->toSendAck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    const/4 v1, 0x0

    # invokes: Lcom/avos/avoscloud/AVSession;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVSession;->access$400(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/MessageManager;->ackSent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method
