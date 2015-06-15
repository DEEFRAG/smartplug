.class public final enum Lcom/avos/sns/SNSType;
.super Ljava/lang/Enum;
.source "SNSType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/sns/SNSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/sns/SNSType;

.field public static final enum AVOSCloudSNS:Lcom/avos/sns/SNSType;

.field public static final enum AVOSCloudSNSQQ:Lcom/avos/sns/SNSType;

.field public static final enum AVOSCloudSNSSinaWeibo:Lcom/avos/sns/SNSType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/avos/sns/SNSType;

    const-string v1, "AVOSCloudSNS"

    invoke-direct {v0, v1, v2}, Lcom/avos/sns/SNSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/sns/SNSType;->AVOSCloudSNS:Lcom/avos/sns/SNSType;

    new-instance v0, Lcom/avos/sns/SNSType;

    const-string v1, "AVOSCloudSNSSinaWeibo"

    invoke-direct {v0, v1, v3}, Lcom/avos/sns/SNSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/sns/SNSType;->AVOSCloudSNSSinaWeibo:Lcom/avos/sns/SNSType;

    new-instance v0, Lcom/avos/sns/SNSType;

    const-string v1, "AVOSCloudSNSQQ"

    invoke-direct {v0, v1, v4}, Lcom/avos/sns/SNSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/sns/SNSType;->AVOSCloudSNSQQ:Lcom/avos/sns/SNSType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avos/sns/SNSType;

    sget-object v1, Lcom/avos/sns/SNSType;->AVOSCloudSNS:Lcom/avos/sns/SNSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/sns/SNSType;->AVOSCloudSNSSinaWeibo:Lcom/avos/sns/SNSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/sns/SNSType;->AVOSCloudSNSQQ:Lcom/avos/sns/SNSType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avos/sns/SNSType;->$VALUES:[Lcom/avos/sns/SNSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/sns/SNSType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/avos/sns/SNSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/sns/SNSType;

    return-object v0
.end method

.method public static values()[Lcom/avos/sns/SNSType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/avos/sns/SNSType;->$VALUES:[Lcom/avos/sns/SNSType;

    invoke-virtual {v0}, [Lcom/avos/sns/SNSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/sns/SNSType;

    return-object v0
.end method
