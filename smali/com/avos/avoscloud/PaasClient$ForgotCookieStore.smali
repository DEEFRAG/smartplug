.class final Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;
.super Ljava/lang/Object;
.source "PaasClient.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PaasClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForgotCookieStore"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/PaasClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/PaasClient$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;-><init>()V

    return-void
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 44
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
