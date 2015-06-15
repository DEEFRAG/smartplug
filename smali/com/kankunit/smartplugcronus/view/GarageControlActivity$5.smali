.class Lcom/kankunit/smartplugcronus/view/GarageControlActivity$5;
.super Ljava/lang/Object;
.source "GarageControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->finish()V

    .line 521
    return-void
.end method
