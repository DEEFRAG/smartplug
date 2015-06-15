.class Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AudioPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field artist:Landroid/widget/TextView;

.field expansion:Landroid/widget/LinearLayout;

.field itemGroup:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

.field layoutFooter:Landroid/view/View;

.field layoutItem:Landroid/widget/LinearLayout;

.field moveButton:Landroid/widget/ImageButton;

.field position:I

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
