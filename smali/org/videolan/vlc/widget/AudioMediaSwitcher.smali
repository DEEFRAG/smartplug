.class public abstract Lorg/videolan/vlc/widget/AudioMediaSwitcher;
.super Lorg/videolan/vlc/widget/FlingViewGroup;
.source "AudioMediaSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    }
.end annotation


# instance fields
.field private hasPrevious:Z

.field private mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

.field private final mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

.field private previousPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/FlingViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher$1;-><init>(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .line 41
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->previousPosition:I

    return v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/widget/AudioMediaSwitcher;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->hasPrevious:Z

    return v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/widget/AudioMediaSwitcher;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->previousPosition:I

    return-void
.end method


# virtual methods
.method protected abstract addMediaView(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public setAudioMediaSwitcherListener(Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->mAudioMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    .line 133
    return-void
.end method

.method public updateMedia()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    .line 46
    .local v0, "audioController":Lorg/videolan/vlc/audio/AudioServiceController;
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->removeAllViews()V

    .line 51
    iput-boolean v5, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->hasPrevious:Z

    .line 52
    iput v5, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->previousPosition:I

    .line 54
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 55
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getTitlePrev()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getArtistPrev()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getCoverPrev()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 56
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->addMediaView(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 60
    iput-boolean v6, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->hasPrevious:Z

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->hasMedia()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getArtist()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getCover()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 63
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->addMediaView(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 67
    :cond_2
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getTitleNext()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getArtistNext()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getCoverNext()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 68
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->addMediaView(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 73
    :cond_3
    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->hasMedia()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    iput v6, p0, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->previousPosition:I

    .line 75
    invoke-virtual {p0, v6}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->scrollTo(I)V

    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {p0, v5}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;->scrollTo(I)V

    goto :goto_0
.end method
