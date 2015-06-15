.class Lcom/kankunit/smartplugcronus/view/KShopActivity$1;
.super Ljava/lang/Object;
.source "KShopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/KShopActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/KShopActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/KShopActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/KShopActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/KShopActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->finish()V

    .line 122
    return-void
.end method
