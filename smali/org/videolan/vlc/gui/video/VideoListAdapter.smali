.class public Lorg/videolan/vlc/gui/video/VideoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/videolan/libvlc/Media;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/videolan/libvlc/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final SORT_BY_LENGTH:I = 0x1

.field public static final SORT_BY_TITLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VLC/MediaLibraryAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

.field private mListMode:Z

.field private mSortBy:I

.field private mSortDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    .line 54
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 55
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    .line 61
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 63
    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/video/VideoListAdapter;)Lorg/videolan/vlc/gui/video/VideoGridFragment;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    return-object v0
.end method

.method private fillGroupView(Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;Lorg/videolan/libvlc/Media;)V
    .locals 8
    .param p1, "holder"    # Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    .param p2, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 199
    move-object v0, p2

    check-cast v0, Lorg/videolan/vlc/MediaGroup;

    .line 200
    .local v0, "mediaGroup":Lorg/videolan/vlc/MediaGroup;
    invoke-virtual {v0}, Lorg/videolan/vlc/MediaGroup;->size()I

    move-result v1

    .line 201
    .local v1, "size":I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0005

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u2026"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 207
    return-void
.end method

.method private fillVideoView(Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;Lorg/videolan/libvlc/Media;)V
    .locals 12
    .param p1, "holder"    # Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    .param p2, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getTime()J

    move-result-wide v0

    .line 213
    .local v0, "lastTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 214
    const-string v3, "%s / %s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 215
    invoke-static {v0, v1}, Lorg/videolan/vlc/util/Strings;->millisToText(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 216
    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/Strings;->millisToText(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 214
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 218
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v4

    div-long/2addr v4, v10

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 219
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    div-long v4, v0, v10

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 225
    :goto_0
    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - %dx%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    :cond_0
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    return-void

    .line 221
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/videolan/vlc/util/Strings;->millisToText(J)Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "text":Ljava/lang/String;
    iget-object v3, p1, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/Media;

    check-cast p2, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->compare(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/Media;)I
    .locals 4
    .param p1, "item1"    # Lorg/videolan/libvlc/Media;
    .param p2, "item2"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "compare":I
    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_0
    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/2addr v1, v0

    return v1

    .line 120
    :pswitch_0
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    move-object v5, p2

    .line 138
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;

    iget-boolean v6, v6, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->listmode:Z

    iget-boolean v7, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    if-eq v6, v7, :cond_3

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 141
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    if-nez v6, :cond_2

    .line 142
    const v6, 0x7f0300f3

    invoke-virtual {v1, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 146
    :goto_0
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;-><init>()V

    .line 147
    .local v0, "holder":Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    const v6, 0x7f070105

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 148
    const v6, 0x7f0703a3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 149
    const v6, 0x7f0703a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 150
    const v6, 0x7f0703a6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 151
    const v6, 0x7f0703a4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 152
    const v6, 0x7f070108

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    .line 153
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    iput-boolean v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->listmode:Z

    .line 154
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    new-instance v7, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;

    invoke-direct {v7, p0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;-><init>(Lorg/videolan/vlc/gui/video/VideoListAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 173
    .local v2, "media":Lorg/videolan/libvlc/Media;
    invoke-static {v2}, Lorg/videolan/vlc/util/BitmapUtil;->getPictureFromCache(Lorg/videolan/libvlc/Media;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 174
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v3, :cond_4

    .line 176
    const v6, 0x7f02027e

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/BitmapCache;->GetFromResource(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 183
    :cond_1
    :goto_2
    iget-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 187
    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f010084

    invoke-static {v7, v8}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v7

    .line 186
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 188
    .local v4, "titleColor":Landroid/content/res/ColorStateList;
    iget-object v6, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    instance-of v6, v2, Lorg/videolan/vlc/MediaGroup;

    if-eqz v6, :cond_5

    .line 191
    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->fillGroupView(Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;Lorg/videolan/libvlc/Media;)V

    .line 195
    :goto_3
    return-object v5

    .line 144
    .end local v0    # "holder":Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    .end local v3    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v4    # "titleColor":Landroid/content/res/ColorStateList;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const v6, 0x7f0300f4

    invoke-virtual {v1, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0

    .line 167
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;

    .restart local v0    # "holder":Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    goto :goto_1

    .line 178
    .restart local v2    # "media":Lorg/videolan/libvlc/Media;
    .restart local v3    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v9, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 180
    const v6, 0x7f02027a

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/BitmapCache;->GetFromResource(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 193
    .restart local v4    # "titleColor":Landroid/content/res/ColorStateList;
    :cond_5
    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->fillVideoView(Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;Lorg/videolan/libvlc/Media;)V

    goto :goto_3
.end method

.method public isListMode()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    return v0
.end method

.method public setListMode(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    .line 246
    return-void
.end method

.method public setTimes(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 83
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 79
    .local v1, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 80
    .local v2, "time":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/videolan/libvlc/Media;->setTime(J)V

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 113
    return-void
.end method

.method public sortBy(I)V
    .locals 3
    .param p1, "sortby"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 104
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 105
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    .line 108
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->sort()V

    .line 109
    return-void

    .line 88
    :pswitch_0
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    if-nez v0, :cond_0

    .line 89
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 91
    :cond_0
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 92
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 96
    :pswitch_1
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    if-ne v0, v1, :cond_1

    .line 97
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 99
    :cond_1
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 100
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized update(Lorg/videolan/libvlc/Media;)V
    .locals 2
    .param p1, "item"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->remove(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0, p1, v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->insert(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
