.class public final Lcom/avos/avoscloud/search/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static avoscloud_search_empty_result_text:I

.field public static avoscloud_search_open_app_text:I

.field public static avoscloud_search_result_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f050002

    sput v0, Lcom/avos/avoscloud/search/R$string;->avoscloud_search_empty_result_text:I

    .line 38
    const/high16 v0, 0x7f050000

    sput v0, Lcom/avos/avoscloud/search/R$string;->avoscloud_search_open_app_text:I

    .line 39
    const v0, 0x7f050001

    sput v0, Lcom/avos/avoscloud/search/R$string;->avoscloud_search_result_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
