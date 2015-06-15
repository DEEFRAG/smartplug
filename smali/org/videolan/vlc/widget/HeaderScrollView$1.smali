.class Lorg/videolan/vlc/widget/HeaderScrollView$1;
.super Ljava/lang/Object;
.source "HeaderScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/widget/HeaderScrollView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/HeaderScrollView;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/HeaderScrollView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/widget/HeaderScrollView$1;->this$0:Lorg/videolan/vlc/widget/HeaderScrollView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 52
    iget-object v4, p0, Lorg/videolan/vlc/widget/HeaderScrollView$1;->this$0:Lorg/videolan/vlc/widget/HeaderScrollView;

    const v5, 0x7f0700fc

    invoke-virtual {v4, v5}, Lorg/videolan/vlc/widget/HeaderScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .local v0, "hl":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 62
    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, "t":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lorg/videolan/vlc/widget/HeaderScrollView$1;->this$0:Lorg/videolan/vlc/widget/HeaderScrollView;

    # getter for: Lorg/videolan/vlc/widget/HeaderScrollView;->mTabWidth:I
    invoke-static {v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->access$0(Lorg/videolan/vlc/widget/HeaderScrollView;)I

    move-result v4

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 56
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v1, :cond_2

    .line 57
    iget-object v4, p0, Lorg/videolan/vlc/widget/HeaderScrollView$1;->this$0:Lorg/videolan/vlc/widget/HeaderScrollView;

    # getter for: Lorg/videolan/vlc/widget/HeaderScrollView;->mTabWidth:I
    invoke-static {v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->access$0(Lorg/videolan/vlc/widget/HeaderScrollView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 59
    iget-object v4, p0, Lorg/videolan/vlc/widget/HeaderScrollView$1;->this$0:Lorg/videolan/vlc/widget/HeaderScrollView;

    # getter for: Lorg/videolan/vlc/widget/HeaderScrollView;->mTabWidth:I
    invoke-static {v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->access$0(Lorg/videolan/vlc/widget/HeaderScrollView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v7, v7, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method
