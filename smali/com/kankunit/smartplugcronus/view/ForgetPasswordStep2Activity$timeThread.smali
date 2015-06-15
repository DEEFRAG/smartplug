.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;
.super Ljava/lang/Thread;
.source "ForgetPasswordStep2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "timeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 263
    const/16 v1, 0x3b

    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_0

    .line 274
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 275
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0xb

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 276
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void

    .line 264
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 265
    .restart local v2    # "message":Landroid/os/Message;
    const/16 v3, 0xa

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
