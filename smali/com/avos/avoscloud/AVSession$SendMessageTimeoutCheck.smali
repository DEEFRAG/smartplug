.class Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMessageTimeoutCheck"
.end annotation


# instance fields
.field private final switcher:Z

.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVSession;Z)V
    .locals 0
    .param p2, "switcher"    # Z

    .prologue
    .line 653
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-boolean p2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->switcher:Z

    .line 655
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 659
    iget-boolean v2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->switcher:Z

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1500(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 665
    .local v0, "now":J
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$1400(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->timeout:I
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$1600(Lcom/avos/avoscloud/AVSession;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 667
    invoke-static {}, Lcom/avos/avoscloud/PushService;->triggerReconnect()V

    .line 668
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$1500(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$1500(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
