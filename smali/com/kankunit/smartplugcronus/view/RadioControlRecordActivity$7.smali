.class Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->numLayout:Z

    .line 372
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isRecord:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 377
    :cond_0
    return-void
.end method
