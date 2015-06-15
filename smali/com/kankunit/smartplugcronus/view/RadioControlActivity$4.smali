.class Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;
.super Ljava/lang/Object;
.source "RadioControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 302
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->numLayout:Z

    .line 304
    return-void
.end method
