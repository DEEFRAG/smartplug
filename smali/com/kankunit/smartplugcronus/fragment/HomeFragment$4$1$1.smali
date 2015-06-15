.class Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 276
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 278
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a010c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
