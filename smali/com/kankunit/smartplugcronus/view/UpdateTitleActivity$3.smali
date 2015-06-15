.class Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;
.super Ljava/lang/Object;
.source "UpdateTitleActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    .line 285
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 284
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    return-void
.end method
