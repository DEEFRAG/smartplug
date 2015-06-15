.class Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;
.super Ljava/lang/Object;
.source "UniversalControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 62
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "imageButton":Landroid/widget/ImageButton;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 64
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->autoButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    iget v2, v2, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lx:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 67
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    iget v2, v2, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->ly:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setY(F)V

    .line 68
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->totalLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    return-void
.end method
