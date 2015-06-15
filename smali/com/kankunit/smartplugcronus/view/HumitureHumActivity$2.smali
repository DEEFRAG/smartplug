.class Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$2;
.super Ljava/lang/Object;
.source "HumitureHumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->mainview:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$4(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x1388

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 129
    return-void
.end method
