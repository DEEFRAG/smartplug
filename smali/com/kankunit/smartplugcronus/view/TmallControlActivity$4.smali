.class Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;
.super Ljava/lang/Object;
.source "TmallControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 227
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    .line 228
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->quit()V

    .line 229
    return-void
.end method
