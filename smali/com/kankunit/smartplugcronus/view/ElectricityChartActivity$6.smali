.class Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$6;
.super Ljava/lang/Object;
.source "ElectricityChartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_mainview:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->access$5(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x1388

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 245
    return-void
.end method
