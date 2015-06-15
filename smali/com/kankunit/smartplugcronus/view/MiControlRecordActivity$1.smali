.class Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;
.super Landroid/os/Handler;
.source "MiControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "buttonName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "buttonName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "buttonId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "buttonId":I
    const-string v4, "begin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 129
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 130
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 131
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iput-boolean v7, v4, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->isPlay:Z

    .line 132
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    const-string v5, "End Play"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    .line 138
    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 139
    move-object v2, v3

    .line 140
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1$1;

    invoke-direct {v5, p0, v2}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;Landroid/view/View;)V

    .line 145
    const-wide/16 v6, 0x64

    .line 140
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    return-void

    .line 134
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method
