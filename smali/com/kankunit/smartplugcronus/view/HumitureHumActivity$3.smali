.class Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;
.super Ljava/lang/Object;
.source "HumitureHumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->initHongMiHeader()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 207
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->hum_chat_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->access$5(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->finish()V

    .line 210
    return-void
.end method
