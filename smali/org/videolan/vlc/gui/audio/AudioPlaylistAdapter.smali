.class public Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AudioPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/videolan/libvlc/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlignMode:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mContext:Landroid/content/Context;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mCurrentIndex:I

    .line 59
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "audio_title_alignment"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mAlignMode:I

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Lorg/videolan/libvlc/Media;)V

    return-void
.end method

.method public add(Lorg/videolan/libvlc/Media;)V
    .locals 1
    .param p1, "m"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 79
    return-void
.end method

.method public getLocation(I)Ljava/util/List;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 173
    return-object v1

    .line 171
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    move-object/from16 v12, p2

    .line 89
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 91
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03003d

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 92
    new-instance v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;

    invoke-direct {v7}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;-><init>()V

    .line 93
    .local v7, "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    const v1, 0x7f07003d

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 94
    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mAlignMode:I

    iget-object v2, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Util;->setAlignModeByPref(ILandroid/widget/TextView;)V

    .line 95
    const v1, 0x7f07010a

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f07011e

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->moveButton:Landroid/widget/ImageButton;

    .line 97
    const v1, 0x7f07011d

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->expansion:Landroid/widget/LinearLayout;

    .line 98
    const v1, 0x7f070105

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutItem:Landroid/widget/LinearLayout;

    .line 99
    const v1, 0x7f07011f

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutFooter:Landroid/view/View;

    .line 100
    const v1, 0x7f07011c

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    iput-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->itemGroup:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    .line 101
    invoke-virtual {v12, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->expansion:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutFooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->itemGroup:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->scrollTo(I)V

    .line 110
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/videolan/libvlc/Media;

    .line 111
    .local v10, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v10}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/videolan/libvlc/Media;->getSubtitle()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "artist":Ljava/lang/String;
    move v4, p1

    .line 114
    .local v4, "pos":I
    move-object v9, v12

    .line 116
    .local v9, "itemView":Landroid/view/View;
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mCurrentIndex:I

    if-ne v1, p1, :cond_1

    .line 118
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f010083

    invoke-static {v1, v13}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 117
    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 120
    .local v11, "titleColor":Landroid/content/res/ColorStateList;
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 121
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iput p1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->position:I

    move-object/from16 v3, p3

    .line 124
    check-cast v3, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    .line 126
    .local v3, "playlistView":Lorg/videolan/vlc/gui/audio/AudioPlaylistView;
    iget-object v13, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->moveButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->itemGroup:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    .line 138
    new-instance v2, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;

    invoke-direct {v2, p0, v3, v4}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;I)V

    .line 137
    invoke-virtual {v1, v2}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->setOnItemSlidedListener(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;)V

    .line 144
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutItem:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$3;

    invoke-direct {v2, p0, v3, v9, v4}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutItem:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;

    invoke-direct {v2, p0, v3, v9, v4}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$4;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    return-object v12

    .line 103
    .end local v3    # "playlistView":Lorg/videolan/vlc/gui/audio/AudioPlaylistView;
    .end local v4    # "pos":I
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v7    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    .end local v9    # "itemView":Landroid/view/View;
    .end local v10    # "media":Lorg/videolan/libvlc/Media;
    .end local v11    # "titleColor":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;

    .restart local v7    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    goto/16 :goto_0

    .line 119
    .restart local v4    # "pos":I
    .restart local v5    # "title":Ljava/lang/String;
    .restart local v6    # "artist":Ljava/lang/String;
    .restart local v9    # "itemView":Landroid/view/View;
    .restart local v10    # "media":Lorg/videolan/libvlc/Media;
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f010084

    invoke-static {v1, v13}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->remove(Lorg/videolan/libvlc/Media;)V

    return-void
.end method

.method public remove(Lorg/videolan/libvlc/Media;)V
    .locals 1
    .param p1, "m"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "currentIndex"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mCurrentIndex:I

    .line 83
    return-void
.end method
