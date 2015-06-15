.class Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;
.super Ljava/lang/Object;
.source "GhControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GhControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 288
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    .line 289
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->quit()V

    .line 290
    return-void
.end method
