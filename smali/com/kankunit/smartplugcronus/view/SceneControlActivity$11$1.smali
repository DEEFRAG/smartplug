.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

.field private final synthetic val$lm:Lcom/kankunit/smartplugcronus/model/LinkageModel;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;->val$lm:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 6
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 685
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;->val$lm:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "needPush":Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 687
    .local v0, "m":Landroid/os/Message;
    const/16 v2, 0x84a

    iput v2, v0, Landroid/os/Message;->what:I

    .line 688
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 693
    const v5, 0x7f0c0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 694
    const/4 v4, 0x1

    .line 690
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 694
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 695
    return-void
.end method
