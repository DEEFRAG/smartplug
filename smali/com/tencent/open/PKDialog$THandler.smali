.class Lcom/tencent/open/PKDialog$THandler;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field private mL:Lcom/tencent/open/PKDialog$OnTimeListener;


# direct methods
.method public constructor <init>(Lcom/tencent/open/PKDialog$OnTimeListener;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 397
    iput-object p1, p0, Lcom/tencent/open/PKDialog$THandler;->mL:Lcom/tencent/open/PKDialog$OnTimeListener;

    .line 398
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 404
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/open/PKDialog$THandler;->mL:Lcom/tencent/open/PKDialog$OnTimeListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/tencent/open/PKDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->access$700(Lcom/tencent/open/PKDialog$OnTimeListener;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/open/PKDialog$THandler;->mL:Lcom/tencent/open/PKDialog$OnTimeListener;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->onCancel()V

    goto :goto_0

    .line 414
    :pswitch_3
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/tencent/open/PKDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/open/PKDialog;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :pswitch_4
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/tencent/open/PKDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/open/PKDialog;->access$900(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
