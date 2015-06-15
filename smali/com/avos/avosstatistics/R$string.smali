.class public final Lcom/avos/avosstatistics/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avosstatistics/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static action_settings:I

.field public static app_name:I

.field public static hello_world:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f030001

    sput v0, Lcom/avos/avosstatistics/R$string;->action_settings:I

    .line 18
    const/high16 v0, 0x7f030000

    sput v0, Lcom/avos/avosstatistics/R$string;->app_name:I

    .line 19
    const v0, 0x7f030002

    sput v0, Lcom/avos/avosstatistics/R$string;->hello_world:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
