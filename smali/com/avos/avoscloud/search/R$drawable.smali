.class public final Lcom/avos/avoscloud/search/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static avoscloud_search_actionbar_back:I

.field public static avoscloud_search_result_open_background:I

.field public static ic_launcher:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x7f020000

    sput v0, Lcom/avos/avoscloud/search/R$drawable;->avoscloud_search_actionbar_back:I

    .line 18
    const v0, 0x7f020001

    sput v0, Lcom/avos/avoscloud/search/R$drawable;->avoscloud_search_result_open_background:I

    .line 19
    const v0, 0x7f020002

    sput v0, Lcom/avos/avoscloud/search/R$drawable;->ic_launcher:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
