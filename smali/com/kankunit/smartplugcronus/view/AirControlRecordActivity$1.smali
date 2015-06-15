.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;
.super Landroid/os/Handler;
.source "AirControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "buttonName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "buttonName":Ljava/lang/String;
    const-string v3, "open"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    .line 134
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 136
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 137
    move-object v1, v2

    .line 138
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1$1;

    invoke-direct {v4, p0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;Landroid/view/View;)V

    .line 143
    const-wide/16 v5, 0x64

    .line 138
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    return-void

    .line 118
    :cond_2
    const-string v3, "function"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->functionButton:Landroid/widget/ImageButton;

    .line 120
    goto :goto_0

    :cond_3
    const-string v3, "add"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addButton:Landroid/widget/ImageButton;

    .line 122
    goto :goto_0

    :cond_4
    const-string v3, "reduce"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->reduceButton:Landroid/widget/ImageButton;

    .line 124
    goto :goto_0

    :cond_5
    const-string v3, "wind"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windButton:Landroid/widget/ImageButton;

    .line 126
    goto :goto_0

    :cond_6
    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v4, 0x7f0200b8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 129
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 130
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 131
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iput-boolean v6, v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isPlay:Z

    .line 132
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v4, "End play"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
