.class public Lorg/videolan/vlc/gui/video/MediaInfoFragment;
.super Landroid/support/v4/app/ListFragment;
.source "MediaInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/MediaInfoFragment$MediaInfoHandler;
    }
.end annotation


# static fields
.field private static final NEW_IMAGE:I = 0x0

.field private static final NEW_TEXT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VLC/MediaInfoFragment"


# instance fields
.field private mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/graphics/Bitmap;

.field private mItem:Lorg/videolan/libvlc/Media;

.field private mLengthView:Landroid/widget/TextView;

.field mLoadImage:Ljava/lang/Runnable;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mTitleView:Landroid/widget/TextView;

.field private mTracks:[Lorg/videolan/libvlc/TrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 109
    new-instance v0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;-><init>(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mLoadImage:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$MediaInfoHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment$MediaInfoHandler;-><init>(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Lorg/videolan/libvlc/Media;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/video/MediaInfoFragment;[Lorg/videolan/libvlc/TrackInfo;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mTracks:[Lorg/videolan/libvlc/TrackInfo;

    return-void
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/video/MediaInfoFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->updateImage()V

    return-void
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->updateText()V

    return-void
.end method

.method private updateImage()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateText()V
    .locals 6

    .prologue
    .line 151
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mTracks:[Lorg/videolan/libvlc/TrackInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 155
    return-void

    .line 151
    :cond_0
    aget-object v0, v2, v1

    .line 152
    .local v0, "track":Lorg/videolan/libvlc/TrackInfo;
    iget v4, v0, Lorg/videolan/libvlc/TrackInfo;->Type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 153
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    invoke-virtual {v4, v0}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->add(Ljava/lang/Object;)V

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mLengthView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mLoadImage:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p3}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f03009b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mTitleView:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mLengthView:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0702be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mPlayButton:Landroid/widget/ImageButton;

    .line 74
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mPlayButton:Landroid/widget/ImageButton;

    new-instance v2, Lorg/videolan/vlc/gui/video/MediaInfoFragment$2;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment$2;-><init>(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v1, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    .line 82
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-object v0
.end method

.method public setMediaLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "MRL"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/MediaLibrary;->getMediaItem(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;

    goto :goto_0
.end method
