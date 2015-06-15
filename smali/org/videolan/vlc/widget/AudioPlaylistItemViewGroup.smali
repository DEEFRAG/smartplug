.class public Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;
.super Lorg/videolan/vlc/widget/FlingViewGroup;
.source "AudioPlaylistItemViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;
    }
.end annotation


# instance fields
.field private mOnItemSlidedListener:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;

.field private final mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/FlingViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$1;-><init>(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .line 34
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;)Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->mOnItemSlidedListener:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;

    return-object v0
.end method


# virtual methods
.method public setOnItemSlidedListener(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->mOnItemSlidedListener:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;

    .line 65
    return-void
.end method
