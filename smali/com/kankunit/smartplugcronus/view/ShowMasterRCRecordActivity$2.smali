.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;
.super Landroid/os/Handler;
.source "ShowMasterRCRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "buttonName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "buttonName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "buttonId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "buttonId":I
    const-string v5, "begin"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    const-string v5, "end"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200b6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 165
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200b8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 166
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 167
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 168
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iput-boolean v8, v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isPlay:Z

    .line 169
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v6, "End Play"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    .line 181
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 182
    move-object v3, v4

    .line 183
    .local v3, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2$1;

    invoke-direct {v6, p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2$1;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;Landroid/view/View;)V

    .line 188
    const-wide/16 v7, 0x64

    .line 183
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 191
    return-void

    .line 172
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->paramButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 173
    .local v2, "pb":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 174
    move-object v4, v2

    .line 175
    goto :goto_0
.end method
