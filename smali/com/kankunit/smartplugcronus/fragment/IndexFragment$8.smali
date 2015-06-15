.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$8;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadePopWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$8;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$8;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 503
    return-void
.end method
