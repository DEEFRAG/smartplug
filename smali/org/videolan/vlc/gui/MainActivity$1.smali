.class Lorg/videolan/vlc/gui/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    .line 808
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 811
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "action":Ljava/lang/String;
    const-string v5, "org.videolan.vlc.gui.ShowProgressBar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 814
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/gui/MainActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 815
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    const-string v5, "org.videolan.vlc.gui.HideProgressBar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 817
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/gui/MainActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 818
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 819
    :cond_2
    const-string v5, "org.videolan.vlc.gui.ShowTextInfo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 820
    const-string v5, "info"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "info":Ljava/lang/String;
    const-string v5, "max"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 822
    .local v3, "max":I
    const-string v5, "progress"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 823
    .local v4, "progress":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mInfoText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$0(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mInfoProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$1(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 825
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mInfoProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$1(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 827
    if-nez v1, :cond_3

    .line 829
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$2(Lorg/videolan/vlc/gui/MainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mInfoLayout:Landroid/view/View;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$3(Lorg/videolan/vlc/gui/MainActivity;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 834
    :cond_3
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$2(Lorg/videolan/vlc/gui/MainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 835
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 836
    .local v2, "m":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 837
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$2(Lorg/videolan/vlc/gui/MainActivity;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 840
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "max":I
    .end local v4    # "progress":I
    :cond_4
    const-string v5, "org.videolan.vlc.gui.ShowPlayer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 841
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->showAudioPlayer()V

    goto/16 :goto_0
.end method
