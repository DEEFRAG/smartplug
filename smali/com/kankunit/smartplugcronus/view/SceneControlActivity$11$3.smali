.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


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


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 769
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 772
    return-void
.end method
