.class Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;
.super Ljava/lang/Object;
.source "AudioAlbumsSongsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyContentFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "dummy":Landroid/view/View;
    return-object v0
.end method
