.class Lcom/kankunit/smartplugcronus/view/AirControlActivity$8;
.super Ljava/lang/Object;
.source "AirControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->finish()V

    .line 645
    return-void
.end method
