.class Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;
.super Ljava/lang/Object;
.source "TmallControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$6(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 296
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isWait:Z

    .line 297
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->quit()V

    .line 298
    return-void
.end method
