.class Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;
.super Ljava/lang/Thread;
.source "AddDelayTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

.field private final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    iput p2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->val$viewId:I

    .line 302
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 305
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x63

    if-lt v1, v3, :cond_1

    .line 354
    :cond_0
    return-void

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isTouchDown:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;I)V

    .line 312
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)I

    move-result v3

    if-gez v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;I)V

    .line 316
    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 317
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->val$viewId:I

    packed-switch v3, :pswitch_data_0

    .line 347
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 323
    :pswitch_2
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 324
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 327
    :pswitch_3
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 328
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 331
    :pswitch_4
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 332
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 335
    :pswitch_5
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 336
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 339
    :pswitch_6
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 340
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x7f07014e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
