.class Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;
.super Ljava/lang/Object;
.source "HumitureTempActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->initHongMiHeader()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 273
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->hum_chat_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->access$5(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->finish()V

    .line 276
    return-void
.end method
