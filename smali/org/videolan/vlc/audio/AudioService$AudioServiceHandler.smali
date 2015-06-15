.class Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioServiceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/audio/AudioService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0
    .param p1, "fragment"    # Lorg/videolan/vlc/audio/AudioService;

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 678
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 682
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;->getOwner()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/audio/AudioService;

    .line 683
    .local v2, "service":Lorg/videolan/vlc/audio/AudioService;
    if-nez v2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 687
    :pswitch_0
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 688
    invoke-virtual {p0, v6}, Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;->removeMessages(I)V

    .line 689
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    .line 690
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v6, v4, v5}, Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 695
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "text":Ljava/lang/String;
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 697
    .local v1, "duration":I
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
