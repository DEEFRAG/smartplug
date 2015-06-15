.class public Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;
.super Lorg/videolan/vlc/widget/AudioMediaSwitcher;
.source "CoverMediaSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected addMediaView(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "cover"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    new-instance v0, Lorg/videolan/vlc/widget/AnimatedCoverView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/widget/AnimatedCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    .local v0, "coverView":Lorg/videolan/vlc/widget/AnimatedCoverView;
    if-nez p4, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 44
    :cond_0
    invoke-virtual {v0, p4}, Lorg/videolan/vlc/widget/AnimatedCoverView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method
