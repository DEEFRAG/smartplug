.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$5;
.super Landroid/os/Handler;
.source "ShowMasterRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 223
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 224
    const-string v3, "text"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->waitTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_1

    .line 229
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "backString":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-virtual {v3, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->doReceive(Ljava/lang/String;)V

    .line 232
    .end local v0    # "backString":Ljava/lang/String;
    :cond_1
    return-void
.end method
