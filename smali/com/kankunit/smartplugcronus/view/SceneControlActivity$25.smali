.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 4027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 4030
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4032
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4047
    :goto_0
    return-void

    .line 4035
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4037
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4038
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4039
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4040
    const v4, 0x7f0a0054

    .line 4039
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 4038
    sub-int v1, v2, v3

    .line 4041
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 4042
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$63(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    .line 4044
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4045
    const v5, 0x7f0a0058

    .line 4044
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 4041
    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
