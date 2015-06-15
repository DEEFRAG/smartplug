.class Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$1;
.super Landroid/os/Handler;
.source "ConfigHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->lightView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    :cond_0
    return-void
.end method
