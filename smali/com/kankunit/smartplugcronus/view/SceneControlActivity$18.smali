.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;
.super Ljava/lang/Thread;
.source "SceneControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

.field private final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iput p2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->val$viewId:I

    .line 2913
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2916
    const/4 v1, 0x0

    .line 2917
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x63

    if-lt v1, v3, :cond_1

    .line 2953
    :cond_0
    return-void

    .line 2918
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isTouchDown:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$60(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2921
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$61(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$62(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 2922
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$61(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    if-gez v3, :cond_2

    .line 2923
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$62(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 2925
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2926
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->val$viewId:I

    packed-switch v3, :pswitch_data_0

    .line 2946
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 2948
    :try_start_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$61(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2949
    :catch_0
    move-exception v0

    .line 2950
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2928
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    const/16 v3, 0xb

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2929
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2932
    :pswitch_2
    const/16 v3, 0x16

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2933
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2936
    :pswitch_3
    const/16 v3, 0x21

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2937
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2940
    :pswitch_4
    const/16 v3, 0x2c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2941
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2926
    nop

    :pswitch_data_0
    .packed-switch 0x7f070274
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
