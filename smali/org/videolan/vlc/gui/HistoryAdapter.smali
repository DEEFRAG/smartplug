.class public Lorg/videolan/vlc/gui/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/HistoryAdapter"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    :try_start_0
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaList;->getEventHandler()Lorg/videolan/libvlc/EventHandler;

    move-result-object v1

    .line 59
    .local v1, "em":Lorg/videolan/libvlc/EventHandler;
    new-instance v2, Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;-><init>(Lorg/videolan/vlc/gui/HistoryAdapter;)V

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V

    .line 60
    .end local v1    # "em":Lorg/videolan/libvlc/EventHandler;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/videolan/libvlc/LibVlcException;
    const-string v2, "VLC/HistoryAdapter"

    const-string v3, "LibVlcException encountered in HistoryAdapter"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    move-object v4, p2

    .line 84
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    .line 85
    iget-object v5, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030095

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 86
    new-instance v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    invoke-direct {v1}, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;-><init>()V

    .line 87
    .local v1, "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    const v5, 0x7f070105

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->layout:Landroid/view/View;

    .line 88
    const v5, 0x7f07003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    .line 89
    const v5, 0x7f07010a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f070106

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    const-string v2, ""

    .line 96
    .local v2, "holderText":Ljava/lang/String;
    iget-object v5, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v3

    .line 97
    .local v3, "m":Lorg/videolan/libvlc/Media;
    if-nez v3, :cond_1

    .line 111
    :goto_1
    return-object v4

    .line 93
    .end local v1    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    .end local v2    # "holderText":Ljava/lang/String;
    .end local v3    # "m":Lorg/videolan/libvlc/Media;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    .restart local v1    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    goto :goto_0

    .line 100
    .restart local v2    # "holderText":Ljava/lang/String;
    .restart local v3    # "m":Lorg/videolan/libvlc/Media;
    :cond_1
    const-string v5, "VLC/HistoryAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loading media position "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x40

    invoke-static {v5, v3, v6}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 107
    iget-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v5, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f02027a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryAdapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public updateEvent(Ljava/lang/Boolean;Ljava/lang/String;I)V
    .locals 3
    .param p1, "added"    # Ljava/lang/Boolean;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "VLC/HistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryAdapter;->notifyDataSetChanged()V

    .line 128
    return-void

    .line 125
    :cond_0
    const-string v0, "VLC/HistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
