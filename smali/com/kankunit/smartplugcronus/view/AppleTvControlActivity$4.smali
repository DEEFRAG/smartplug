.class Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;
.super Ljava/lang/Object;
.source "AppleTvControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->isWait:Z

    .line 232
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->quit()V

    .line 233
    return-void
.end method
