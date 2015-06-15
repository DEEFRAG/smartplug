.class Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;
.super Ljava/lang/Object;
.source "AudioMediaSwitcher.java"

# interfaces
.implements Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/AudioMediaSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackSwitched()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onSwitched(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->previousPosition:I
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$1(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 96
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->hasPrevious:Z
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$2(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onMediaSwitched(I)V

    .line 98
    :cond_0
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->hasPrevious:Z
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$2(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onMediaSwitched(I)V

    .line 102
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    invoke-static {v0, p1}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$3(Lorg/videolan/vlc/widget/AudioMediaSwitcher;I)V

    .line 107
    :cond_2
    :goto_1
    return-void

    .line 100
    :cond_3
    if-ne p1, v2, :cond_1

    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onMediaSwitched(I)V

    goto :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onMediaSwitched(I)V

    goto :goto_1
.end method

.method public onSwitching(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onMediaSwitching()V

    .line 89
    :cond_0
    return-void
.end method

.method public onTouchClick()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onTouchClick()V

    .line 125
    :cond_0
    return-void
.end method

.method public onTouchDown()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onTouchDown()V

    .line 113
    :cond_0
    return-void
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;->this$0:Lorg/videolan/vlc/widget/AudioMediaSwitcher;

    # getter for: Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;->onTouchUp()V

    .line 119
    :cond_0
    return-void
.end method
