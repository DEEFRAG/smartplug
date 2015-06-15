.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$1;
.super Landroid/os/Handler;
.source "RemoteControlPanelRFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 110
    const-string v2, "text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->waitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method
