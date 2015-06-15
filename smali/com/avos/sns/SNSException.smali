.class public Lcom/avos/sns/SNSException;
.super Ljava/lang/Exception;
.source "SNSException.java"


# static fields
.field public static final NO_APP_KEY:I = 0x2

.field public static final OTHER_CAUSE:I = -0x1

.field public static final USER_CANCEL:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "theCode"    # I
    .param p2, "theMessage"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lcom/avos/sns/SNSException;->code:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method public static noAppKeyException()Lcom/avos/sns/SNSException;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/avos/sns/SNSException;

    const/4 v1, 0x2

    const-string v2, "No App Key"

    invoke-direct {v0, v1, v2}, Lcom/avos/sns/SNSException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/avos/sns/SNSException;->code:I

    return v0
.end method
