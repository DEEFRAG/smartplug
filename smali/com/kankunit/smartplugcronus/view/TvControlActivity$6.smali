.class Lcom/kankunit/smartplugcronus/view/TvControlActivity$6;
.super Ljava/lang/Object;
.source "TvControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TvControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TvControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TvControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TvControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/TvControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 324
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/TvControlActivity;->isWait:Z

    .line 325
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TvControlActivity;->quit()V

    .line 326
    return-void
.end method
