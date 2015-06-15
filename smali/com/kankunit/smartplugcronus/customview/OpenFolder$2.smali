.class Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;
.super Ljava/lang/Object;
.source "OpenFolder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/OpenFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;)Lcom/kankunit/smartplugcronus/customview/OpenFolder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$1(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    move-result-object v0

    new-instance v1, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2$1;-><init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->post(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$2(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$1(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$3(Lcom/kankunit/smartplugcronus/customview/OpenFolder;Z)V

    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBackgroundView:Landroid/view/View;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$4(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$0(Lcom/kankunit/smartplugcronus/customview/OpenFolder;Z)V

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOnFolderClosedListener:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$5(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOnFolderClosedListener:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$5(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;->onClosed()V

    .line 124
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 104
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 100
    return-void
.end method
