.class Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;
.super Ljava/lang/Object;
.source "TvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 294
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->numLayout:Z

    .line 301
    return-void
.end method
