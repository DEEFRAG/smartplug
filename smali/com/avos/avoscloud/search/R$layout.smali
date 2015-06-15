.class public final Lcom/avos/avoscloud/search/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static avoscloud_search_actionbar:I

.field public static avoscloud_search_activity:I

.field public static avoscloud_search_loading:I

.field public static avoscloud_search_result_item:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/high16 v0, 0x7f030000

    sput v0, Lcom/avos/avoscloud/search/R$layout;->avoscloud_search_actionbar:I

    .line 32
    const v0, 0x7f030001

    sput v0, Lcom/avos/avoscloud/search/R$layout;->avoscloud_search_activity:I

    .line 33
    const v0, 0x7f030002

    sput v0, Lcom/avos/avoscloud/search/R$layout;->avoscloud_search_loading:I

    .line 34
    const v0, 0x7f030003

    sput v0, Lcom/avos/avoscloud/search/R$layout;->avoscloud_search_result_item:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
