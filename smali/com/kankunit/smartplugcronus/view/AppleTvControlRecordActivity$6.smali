.class Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;
.super Ljava/lang/Object;
.source "AppleTvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->access$8(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 312
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isWait:Z

    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->quit()V

    .line 314
    return-void
.end method
