.class public Lorg/videolan/vlc/gui/SidebarAdapter;
.super Landroid/widget/BaseAdapter;
.source "SidebarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SidebarAdapter"

.field static final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final sidebarFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFragmentId:Ljava/lang/String;

.field private mFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x4

    new-array v1, v3, [Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    .line 69
    new-instance v3, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v4, "video"

    const v5, 0x7f0c002e

    const v6, 0x7f010099

    invoke-direct {v3, v4, v5, v6}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    const/4 v3, 0x1

    .line 70
    new-instance v4, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v5, "audio"

    const v6, 0x7f0c002d

    const v7, 0x7f01009a

    invoke-direct {v4, v5, v6, v7}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 71
    new-instance v4, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v5, "directories"

    const v6, 0x7f0c0038

    const v7, 0x7f01009b

    invoke-direct {v4, v5, v6, v7}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 72
    new-instance v4, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v5, "history"

    const v6, 0x7f0c0013

    const v7, 0x7f01009c

    invoke-direct {v4, v5, v6, v7}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v3

    .line 76
    .local v1, "entries2":[Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lorg/videolan/vlc/gui/SidebarAdapter;->sidebarFragments:Ljava/util/List;

    .line 79
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 82
    return-void

    .line 79
    :cond_0
    aget-object v0, v1, v2

    .line 80
    .local v0, "e":Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    sget-object v4, Lorg/videolan/vlc/gui/SidebarAdapter;->sidebarFragments:Ljava/util/List;

    iget-object v5, v0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    .line 88
    return-void
.end method

.method private setCurrentFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mCurrentFragmentId:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SidebarAdapter;->notifyDataSetChanged()V

    .line 164
    return-void
.end method


# virtual methods
.method public fetchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mCurrentFragmentId:Ljava/lang/String;

    .line 136
    .local v1, "prevFragmentId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/SidebarAdapter;->setCurrentFragment(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 158
    :goto_0
    return-object v2

    .line 143
    :cond_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;-><init>()V

    .line 156
    .local v0, "f":Landroid/support/v4/app/Fragment;
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 157
    iget-object v2, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 158
    goto :goto_0

    .line 145
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    const-string v2, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;-><init>()V

    .line 147
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    const-string v2, "directories"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;-><init>()V

    .line 149
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    const-string v2, "history"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    new-instance v0, Lorg/videolan/vlc/gui/HistoryFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/HistoryFragment;-><init>()V

    .line 151
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 153
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    iput-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mCurrentFragmentId:Ljava/lang/String;

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong fragment id."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    sget-object v0, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 107
    sget-object v4, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    .line 110
    .local v2, "sidebarEntry":Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    if-nez p2, :cond_0

    .line 111
    iget-object v4, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300da

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 113
    check-cast v3, Landroid/widget/TextView;

    .line 114
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mContext:Landroid/content/Context;

    iget v6, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->attributeID:I

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v5

    .line 115
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    .local v1, "img":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 118
    const/16 v4, 0x20

    invoke-static {v4}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v0

    .line 119
    .local v0, "dp_32":I
    invoke-virtual {v1, v8, v8, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    invoke-virtual {v3, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    .end local v0    # "dp_32":I
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mCurrentFragmentId:Ljava/lang/String;

    iget-object v5, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const/4 v4, 0x1

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 128
    :goto_0
    return-object p2

    .line 126
    :cond_2
    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public restoreFragment(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    const-string v0, "VLC/SidebarAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set null fragment for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/SidebarAdapter;->setCurrentFragment(Ljava/lang/String;)V

    goto :goto_0
.end method
