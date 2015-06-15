.class Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$2;
.super Ljava/lang/Object;
.source "HumitureLumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->mainview:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x1388

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 221
    return-void
.end method
