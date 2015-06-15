.class Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;
.super Ljava/lang/Object;
.source "GhControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GhControlActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 669
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 680
    :goto_0
    return-void

    .line 674
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 676
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 677
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 678
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
