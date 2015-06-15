.class Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 6
    .param p1, "vis"    # I

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    # getter for: Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mTestFlags:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->access$0(Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 106
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v2}, Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->access$1(Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;Z)V

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    # getter for: Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mShowFlags:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->access$2(Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v4}, Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;->access$1(Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;Z)V

    goto :goto_0
.end method
