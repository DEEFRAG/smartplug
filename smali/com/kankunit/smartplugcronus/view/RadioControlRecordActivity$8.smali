.class Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$8;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$8(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 385
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isWait:Z

    .line 386
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->quit()V

    .line 387
    return-void
.end method
