.class Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;
.super Ljava/lang/Object;
.source "UpdateTitleActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 6
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 215
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$0(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "needPush":Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 218
    .local v0, "m":Landroid/os/Message;
    const/16 v2, 0x84a

    iput v2, v0, Landroid/os/Message;->what:I

    .line 219
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 224
    const v5, 0x7f0c0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    const/4 v4, 0x1

    .line 221
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 227
    return-void
.end method
