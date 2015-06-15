.class Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$6;
.super Ljava/lang/Object;
.source "MiControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->access$8(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 322
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->isWait:Z

    .line 323
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->quit()V

    .line 324
    return-void
.end method
