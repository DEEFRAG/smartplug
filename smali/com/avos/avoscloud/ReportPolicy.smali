.class public final enum Lcom/avos/avoscloud/ReportPolicy;
.super Ljava/lang/Enum;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/ReportPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/ReportPolicy;

.field public static final enum BATCH:Lcom/avos/avoscloud/ReportPolicy;

.field public static final enum REALTIME:Lcom/avos/avoscloud/ReportPolicy;

.field public static final enum SENDDAILY:Lcom/avos/avoscloud/ReportPolicy;

.field public static final enum SENDWIFIONLY:Lcom/avos/avoscloud/ReportPolicy;

.field public static final enum SEND_INTERVAL:Lcom/avos/avoscloud/ReportPolicy;

.field public static final enum SEND_ON_EXIT:Lcom/avos/avoscloud/ReportPolicy;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/avos/avoscloud/ReportPolicy;

    const-string v1, "REALTIME"

    invoke-direct {v0, v1, v3, v3}, Lcom/avos/avoscloud/ReportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    .line 9
    new-instance v0, Lcom/avos/avoscloud/ReportPolicy;

    const-string v1, "BATCH"

    invoke-direct {v0, v1, v4, v4}, Lcom/avos/avoscloud/ReportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->BATCH:Lcom/avos/avoscloud/ReportPolicy;

    .line 10
    new-instance v0, Lcom/avos/avoscloud/ReportPolicy;

    const-string v1, "SENDDAILY"

    invoke-direct {v0, v1, v7, v5}, Lcom/avos/avoscloud/ReportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->SENDDAILY:Lcom/avos/avoscloud/ReportPolicy;

    .line 11
    new-instance v0, Lcom/avos/avoscloud/ReportPolicy;

    const-string v1, "SENDWIFIONLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v6}, Lcom/avos/avoscloud/ReportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->SENDWIFIONLY:Lcom/avos/avoscloud/ReportPolicy;

    .line 12
    new-instance v0, Lcom/avos/avoscloud/ReportPolicy;

    const-string v1, "SEND_INTERVAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/avos/avoscloud/ReportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->SEND_INTERVAL:Lcom/avos/avoscloud/ReportPolicy;

    .line 13
    new-instance v0, Lcom/avos/avoscloud/ReportPolicy;

    const-string v1, "SEND_ON_EXIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/avos/avoscloud/ReportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->SEND_ON_EXIT:Lcom/avos/avoscloud/ReportPolicy;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avos/avoscloud/ReportPolicy;

    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->BATCH:Lcom/avos/avoscloud/ReportPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->SENDDAILY:Lcom/avos/avoscloud/ReportPolicy;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/avos/avoscloud/ReportPolicy;->SENDWIFIONLY:Lcom/avos/avoscloud/ReportPolicy;

    aput-object v2, v0, v1

    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->SEND_INTERVAL:Lcom/avos/avoscloud/ReportPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->SEND_ON_EXIT:Lcom/avos/avoscloud/ReportPolicy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avos/avoscloud/ReportPolicy;->$VALUES:[Lcom/avos/avoscloud/ReportPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/ReportPolicy;->value:I

    .line 18
    iput p3, p0, Lcom/avos/avoscloud/ReportPolicy;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(I)Lcom/avos/avoscloud/ReportPolicy;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 36
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->BATCH:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->SENDDAILY:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 30
    :pswitch_4
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->SENDWIFIONLY:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 32
    :pswitch_5
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->SEND_INTERVAL:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 34
    :pswitch_6
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->SEND_ON_EXIT:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/ReportPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/avos/avoscloud/ReportPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ReportPolicy;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/ReportPolicy;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->$VALUES:[Lcom/avos/avoscloud/ReportPolicy;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/ReportPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/ReportPolicy;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/avos/avoscloud/ReportPolicy;->value:I

    return v0
.end method
