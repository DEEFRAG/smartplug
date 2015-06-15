.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 200
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$0(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)I

    move-result v1

    .line 202
    .local v1, "newPosition":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 244
    .end local v1    # "newPosition":I
    :cond_0
    :goto_0
    return v5

    .line 204
    .restart local v1    # "newPosition":I
    :pswitch_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 205
    add-int/lit8 v1, v1, 0x1

    .line 218
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$0(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 219
    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 221
    .local v0, "lists":[I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 222
    aget v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 221
    check-cast v2, Landroid/widget/ListView;

    .line 224
    .local v2, "vList":Landroid/widget/ListView;
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/videolan/vlc/widget/HeaderScrollView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;

    move-result-object v3

    int-to-float v4, v1

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->scroll(F)V

    .line 227
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 228
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;

    move-result-object v3

    const v4, 0x7f0700fb

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->setNextFocusDownId(I)V

    .line 232
    :goto_2
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$3(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/FlingViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollTo(I)V

    .line 235
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v3, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;I)V

    .line 237
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/MainActivity;

    .line 238
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 239
    aget v7, v0, v1

    .line 237
    invoke-virtual {v3, v4, v6, v7}, Lorg/videolan/vlc/gui/MainActivity;->setSearchAsFocusDown(ZLandroid/view/View;I)V

    goto :goto_0

    .line 208
    .end local v0    # "lists":[I
    .end local v2    # "vList":Landroid/widget/ListView;
    :pswitch_1
    if-lez v1, :cond_1

    .line 209
    add-int/lit8 v1, v1, -0x1

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;I)V

    goto :goto_1

    .line 230
    .restart local v0    # "lists":[I
    .restart local v2    # "vList":Landroid/widget/ListView;
    :cond_3
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->setNextFocusDownId(I)V

    goto :goto_2

    :cond_4
    move v4, v5

    .line 238
    goto :goto_3

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 219
    :array_0
    .array-data 4
        0x7f070101
        0x7f070102
        0x7f070103
        0x7f070104
    .end array-data
.end method
