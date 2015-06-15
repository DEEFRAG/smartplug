.class public Lorg/videolan/vlc/widget/ExpandableLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandableLayout.java"


# instance fields
.field private listener:Lorg/videolan/vlc/interfaces/OnExpandableListener;

.field private final mContent:Landroid/widget/LinearLayout;

.field private mExpanded:Ljava/lang/Boolean;

.field private final mHeaderLayout:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mMore:Landroid/widget/ImageView;

.field private final mText:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->listener:Lorg/videolan/vlc/interfaces/OnExpandableListener;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mHeaderLayout:Landroid/view/View;

    .line 52
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mIcon:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mTitle:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0701c0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mText:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mMore:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mContent:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mHeaderLayout:Landroid/view/View;

    new-instance v1, Lorg/videolan/vlc/widget/ExpandableLayout$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/widget/ExpandableLayout$1;-><init>(Lorg/videolan/vlc/widget/ExpandableLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/ExpandableLayout;->isInEditMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->setState(Ljava/lang/Boolean;)V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/widget/ExpandableLayout;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mExpanded:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/widget/ExpandableLayout;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/videolan/vlc/widget/ExpandableLayout;->setState(Ljava/lang/Boolean;)V

    return-void
.end method

.method private setState(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "expanded"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mExpanded:Ljava/lang/Boolean;

    .line 70
    iget-object v1, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mMore:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/ExpandableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f01008a

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 70
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/ExpandableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010089

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->setState(Ljava/lang/Boolean;)V

    .line 101
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->listener:Lorg/videolan/vlc/interfaces/OnExpandableListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->listener:Lorg/videolan/vlc/interfaces/OnExpandableListener;

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/OnExpandableListener;->onDismiss()V

    .line 106
    :cond_0
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/widget/ExpandableLayout;->setState(Ljava/lang/Boolean;)V

    .line 97
    return-void
.end method

.method public setContent(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public setOnExpandableListener(Lorg/videolan/vlc/interfaces/OnExpandableListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/vlc/interfaces/OnExpandableListener;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->listener:Lorg/videolan/vlc/interfaces/OnExpandableListener;

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/widget/ExpandableLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    return-void
.end method
