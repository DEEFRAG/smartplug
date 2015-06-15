.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$16;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showPopWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$16;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 692
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$16;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 695
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
