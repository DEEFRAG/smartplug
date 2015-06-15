.class public Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;
.super Lorg/videolan/vlc/widget/AudioMediaSwitcher;
.source "HeaderMediaSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/AudioMediaSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected addMediaView(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "cover"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 41
    const v4, 0x7f03003a

    invoke-virtual {p1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 43
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .local v1, "coverView":Landroid/widget/ImageView;
    const v4, 0x7f07003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "titleView":Landroid/widget/TextView;
    const v4, 0x7f07010a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "artistView":Landroid/widget/TextView;
    if-eqz p4, :cond_0

    .line 48
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    :cond_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;->addView(Landroid/view/View;)V

    .line 56
    return-void
.end method
