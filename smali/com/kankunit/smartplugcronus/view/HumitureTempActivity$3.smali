.class Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$3;
.super Ljava/lang/Object;
.source "HumitureTempActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mainview:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->access$4(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x1388

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 193
    return-void
.end method
