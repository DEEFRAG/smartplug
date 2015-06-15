.class public Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioBrowserListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;,
        Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;,
        Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_WITHOUT_COVER:I = 0x0

.field public static final ITEM_WITH_COVER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VLC/AudioBrowserListAdapter"

.field private static final VIEW_MEDIA:I = 0x0

.field private static final VIEW_SEPARATOR:I = 0x1


# instance fields
.field private mAlignMode:I

.field private mContext:Landroid/content/Context;

.field private mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

.field private mItemType:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparatorItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemType"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mMediaItemMap:Ljava/util/Map;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSeparatorItemMap:Ljava/util/Map;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    .line 96
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContext:Landroid/content/Context;

    .line 97
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 99
    :cond_0
    iput p2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItemType:I

    .line 100
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "audio_title_alignment"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mAlignMode:I

    .line 102
    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    return-object v0
.end method

.method private calculateSections(Z)V
    .locals 11
    .param p1, "addSeparators"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 132
    const/16 v9, 0x61

    .line 133
    .local v9, "prevFirstChar":C
    const/4 v7, 0x1

    .line 135
    .local v7, "firstSeparator":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 169
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v10, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mTitle:Ljava/lang/String;

    .line 138
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 139
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 143
    .local v6, "firstChar":C
    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    if-nez v7, :cond_1

    if-eq v6, v9, :cond_2

    .line 145
    :cond_1
    if-eqz p1, :cond_4

    .line 146
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;Z)V

    .line 147
    .local v0, "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 152
    .end local v0    # "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    :goto_2
    move v9, v6

    .line 153
    const/4 v7, 0x0

    .line 135
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 141
    .end local v6    # "firstChar":C
    :cond_3
    const/16 v6, 0x23

    .restart local v6    # "firstChar":C
    goto :goto_1

    .line 151
    :cond_4
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 156
    :cond_5
    if-eqz v7, :cond_2

    .line 157
    if-eqz p1, :cond_6

    .line 158
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    const-string v2, "#"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;Z)V

    .line 159
    .restart local v0    # "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    const-string v2, "#"

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    add-int/lit8 v8, v8, 0x1

    .line 164
    .end local v0    # "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    :goto_4
    move v9, v6

    .line 165
    const/4 v7, 0x0

    goto :goto_3

    .line 163
    :cond_6
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    const-string v2, "#"

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method private isMediaItemAboveASeparator(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-boolean v0, v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tested item must be a media item and not a separator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 460
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-boolean v0, v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-eqz v0, :cond_2

    .line 458
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 460
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 107
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mMediaItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mMediaItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;Z)V

    .line 112
    .local v0, "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mMediaItemMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addLetterSeparators()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->calculateSections(Z)V

    .line 120
    return-void
.end method

.method public addScrollSections()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->calculateSections(Z)V

    .line 124
    return-void
.end method

.method public addSeparator(Ljava/lang/String;Lorg/videolan/libvlc/Media;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSeparatorItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSeparatorItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;Z)V

    .line 178
    .local v0, "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSeparatorItemMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mMediaItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 209
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSeparatorItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 212
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 213
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 339
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "viewType":I
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-boolean v1, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-eqz v1, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 347
    :cond_0
    return v0
.end method

.method public getListWithPosition(Ljava/util/List;I)I
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "outputList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 436
    .local v2, "outputPosition":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 447
    return v2

    .line 438
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-boolean v3, v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-nez v3, :cond_2

    .line 439
    if-ne p2, v0, :cond_1

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v3, v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 442
    :cond_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v3, v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 437
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 443
    .local v1, "k":Lorg/videolan/libvlc/Media;
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLocations(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v1, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v2, v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    .line 420
    .local v2, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 423
    .end local v0    # "i":I
    .end local v2    # "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    :cond_0
    return-object v1

    .line 421
    .restart local v0    # "i":I
    .restart local v2    # "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/libvlc/Media;

    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMedia(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-boolean v1, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 412
    :cond_0
    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 378
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 386
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 380
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 381
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 382
    .end local v0    # "index":I
    :cond_1
    if-gtz p1, :cond_2

    .line 383
    const/4 v0, 0x0

    .restart local v0    # "index":I
    goto :goto_0

    .line 385
    .end local v0    # "index":I
    :cond_2
    move v0, p1

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 392
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 402
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getViewMedia(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getViewSeparator(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewMedia(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 224
    move-object v9, p2

    .line 229
    .local v9, "v":Landroid/view/View;
    const/4 v0, 0x1

    .line 230
    .local v0, "b_createView":Z
    if-eqz v9, :cond_0

    .line 231
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;

    .line 232
    .local v2, "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    iget v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->viewType:I

    if-nez v10, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 236
    .end local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    :cond_0
    if-eqz v0, :cond_2

    .line 237
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 238
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f030038

    const/4 v11, 0x0

    invoke-virtual {v3, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 239
    new-instance v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;

    invoke-direct {v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;-><init>()V

    .line 240
    .restart local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    const v10, 0x7f070105

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 241
    const v10, 0x7f07003d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 242
    iget v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mAlignMode:I

    iget-object v11, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v10, v11}, Lorg/videolan/vlc/util/Util;->setAlignModeByPref(ILandroid/widget/TextView;)V

    .line 243
    const v10, 0x7f070106

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 244
    const v10, 0x7f070107

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 245
    const v10, 0x7f070109

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->footer:Landroid/view/View;

    .line 246
    const v10, 0x7f070108

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    .line 247
    const/4 v10, 0x0

    iput v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->viewType:I

    .line 248
    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v4

    .line 253
    .local v4, "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v11, v4, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItemType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 257
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v10, v10, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 258
    .local v5, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x40

    invoke-static {v10, v5, v11}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 259
    .local v1, "cover":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 260
    const v10, 0x7f02027a

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/BitmapCache;->GetFromResource(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 261
    :cond_1
    iget-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 263
    .local v8, "size":I
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    .end local v1    # "cover":Landroid/graphics/Bitmap;
    .end local v5    # "media":Lorg/videolan/libvlc/Media;
    .end local v8    # "size":I
    .local v6, "paramsCover":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    iget-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v11, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mSubTitle:Ljava/lang/String;

    if-nez v10, :cond_4

    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v11, v4, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v11, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->footer:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->isMediaItemAboveASeparator(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x8

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 275
    move v7, p1

    .line 276
    .local v7, "pos":I
    iget-object v10, v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    new-instance v11, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;

    invoke-direct {v11, p0, v7}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;I)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    return-object v9

    .line 250
    .end local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    .end local v4    # "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    .end local v6    # "paramsCover":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "pos":I
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;

    .restart local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 266
    .restart local v4    # "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    :cond_3
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v6    # "paramsCover":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 269
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 273
    :cond_5
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public getViewSeparator(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    .line 288
    move-object v4, p2

    .line 293
    .local v4, "v":Landroid/view/View;
    const/4 v0, 0x1

    .line 294
    .local v0, "b_createView":Z
    if-eqz v4, :cond_0

    .line 295
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;

    .line 296
    .local v1, "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    iget v5, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->viewType:I

    if-ne v5, v7, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 300
    .end local v1    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    :cond_0
    if-eqz v0, :cond_1

    .line 301
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 302
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030039

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 303
    new-instance v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;

    invoke-direct {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;-><init>()V

    .line 304
    .restart local v1    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    const v5, 0x7f070105

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 305
    const v5, 0x7f07003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 306
    iput v7, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->viewType:I

    .line 307
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v3

    .line 312
    .local v3, "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v5, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v3, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-object v4

    .line 309
    .end local v1    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    .end local v3    # "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;

    .restart local v1    # "holder":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMedia(Lorg/videolan/libvlc/Media;)V
    .locals 5
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 205
    return-void

    .line 191
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    .line 192
    .local v1, "item":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 190
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 199
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-nez v3, :cond_1

    .line 200
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 195
    :cond_3
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/libvlc/Media;

    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    add-int/lit8 v2, v2, -0x1

    .line 194
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    .prologue
    .line 468
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    .line 469
    return-void
.end method
