.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;
.super Ljava/lang/Object;
.source "ShowMasterRCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->access$3(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    .line 189
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->quit()V

    .line 190
    return-void
.end method
