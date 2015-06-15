.class Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;
.super Ljava/lang/Object;
.source "RadioControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 356
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 357
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->numLayout:Z

    .line 359
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-boolean v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isRecord:Z

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 364
    :cond_0
    return-void
.end method
